<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Barryvdh\DomPDF\Facade\Pdf;
use App\Models\Product;
use Illuminate\Support\Facades\Mail;

class PdfController extends Controller
{
    /**
     * Generate a PDF document.
     */
    public function generateCompanyPdf(Request $request)
    {
        $data = $request->all();

        $pdf = Pdf::loadView('pdf.company', $data);
        return $pdf->download('company.pdf');
    }

    public function generateProductPdf()
    {
        $user = auth()->user();
        $products = Product::with(['family', 'article'])
            ->where('company_id', $user->company_id)
            ->orderBy('family_id')
            ->get();
        $company = $user->company;

        $pdf = Pdf::loadView('pdf.products', compact('products', 'company'));
        return $pdf->download('products.pdf');
    }

    public function sendPdfByEmail(Request $request)
    {
        $companyPdf = $this->generateCompanyPdf($request);
        $productPdf = $this->generateProductPdf();

        $email = $request->input('email');

        Mail::send([], [], function ($message) use ($email, $companyPdf, $productPdf) {
            $message->to($email)
                ->subject('Your PDF Documents')
                ->attachData($companyPdf->output(), 'company.pdf', [
                    'mime' => 'application/pdf',
                ])
                ->attachData($productPdf->output(), 'products.pdf', [
                    'mime' => 'application/pdf',
                ])
                ->setBody('Please find the attached PDF documents.');
        });

        return response()->json(['message' => 'PDFs sent successfully to ' . $email]);
    }
}
