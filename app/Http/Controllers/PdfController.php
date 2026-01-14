<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;

use Barryvdh\DomPDF\Facade\Pdf;
use App\Models\Company;
use App\Models\Product;
use Illuminate\Support\Facades\Mail;

class PdfController extends Controller
{
    /**
     * Generate a PDF document.
     */
    public function generateCompanyPdf($id)
    {
        $company = Company::with([
            'contactPerson',
            'deliveryTerm',
            'transport',
            'paymentTerm',
            'bankEntity',
            'discount'
        ])->findOrFail($id);

        $pdf = Pdf::loadView('pdf.company', compact('company'));
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

    private function generateCompanyPdfForEmail($company)
    {
        $user = auth()->user();
        if ($company instanceof \Illuminate\Database\Eloquent\Collection) {
            $company = $company->firstWhere('id', $user->company_id);

            if (!$company) {
                throw new \Exception('No matching company found for user');
            }
        }

        $company->load([
            'contactPerson',
            'deliveryTerm',
            'transport',
            'paymentTerm',
            'bankEntity',
            'discount'
        ]);

        $pdf = Pdf::loadView('pdf.company', compact('company'));
        return $pdf;
    }

    private function generateProductPdfForEmail()
    {
        $user = auth()->user();
        $products = Product::with(['family', 'article'])
            ->where('company_id', $user->company_id)
            ->orderBy('family_id')
            ->get();
        $company = $user->company;

        $pdf = Pdf::loadView('pdf.products', compact('products', 'company'));
        return $pdf;
    }

    public function sendPdfByEmail(Request $request)
    {
        $validated = $request->validate([
            'emails' => 'required|array|min:1',
            'emails.*' => 'email'
        ]);

        $companies = Company::with([
            'user' => function ($query) {
                $query->where('iscontact', 1);
            },
            'contactPerson',
            'deliveryTerm',
            'transport',
            'paymentTerm',
            'bankEntity',
            'discount'
        ])->get();

        $companyPdf = $this->generateCompanyPdfForEmail($companies);
        $productPdf = $this->generateProductPdfForEmail();


        $emails = $validated['emails'];

        try {
            Mail::send([], [], function ($message) use ($emails, $companyPdf, $productPdf) {
                $message->to($emails)
                    ->subject('Your PDF Documents')
                    ->attachData($companyPdf->output(), 'company.pdf', [
                        'mime' => 'application/pdf',
                    ])
                    ->attachData($productPdf->output(), 'products.pdf', [
                        'mime' => 'application/pdf',
                    ])
                    ->html('Por favor, encuentre los documentos PDF adjuntos.');
            });

            $emailList = implode(', ', $emails);
            return redirect()->back()->with('success', 'PDFs enviados exitosamente a: ' . $emailList);

        } catch (\Exception $e) {
            return redirect()->back()->with('error', 'Error al enviar los emails: ' . $e->getMessage());
        }
    }

    public function showForm()
    {
        $users = User::where('deleted', 0)->where('iscontact', 1)->get();

        return view('user.company.form', compact('users'));
    }
}
