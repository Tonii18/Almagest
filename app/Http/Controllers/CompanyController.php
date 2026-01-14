<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Company;
use App\Models\DeliveryTerm;
use App\Models\Transport;
use App\Models\PaymentTerm;
use App\Models\BankEntity;
use App\Models\Discount;
use Illuminate\Support\Facades\Auth;

class CompanyController extends Controller
{
    /**
     * Mostrar el dashboard de la empresa del usuario
     */
    public function index()
    {
        $user = auth()->user();

        $company = Company::with([
            'deliveryTerm',
            'transport',
            'paymentTerm',
            'bankEntity',
            'discount',
            'contactPerson'
        ])->find($user->company_id);

        return view('user.company.dashboard', compact('company', 'user'));
    }

    /**
     * Mostrar el formulario de edición del perfil
     */
    public function edit($id)
    {
        $user = Auth::user();

        // Solo puede editar su propia empresa
        if ($id != $user->company_id) {
            abort(403, 'No tienes permiso para editar esta empresa.');
        }

        $company = Company::with([
            'contactPerson',
            'deliveryTerm',
            'transport',
            'paymentTerm',
            'bankEntity',
            'discount'
        ])->findOrFail($user->company_id);

        return view('user.company.profile', [
            'company' => $company,
            'deliveryTerms' => DeliveryTerm::all(),
            'transportPrices' => Transport::all(), // coincide con Blade
            'paymentTerms' => PaymentTerm::all(),
            'bankEntities' => BankEntity::all(),
            'discounts' => Discount::all(),
        ]);
    }

    /**
     * Actualizar los datos de la empresa
     */
    public function update(Request $request, $id)
    {
        $user = Auth::user();

        // Solo puede actualizar su propia empresa
        if ($id != $user->company_id) {
            abort(403, 'No tienes permiso para actualizar esta empresa.');
        }

        $request->validate([
            'name' => 'required|string|max:255',
            'address' => 'required|string|max:255',
            'city' => 'required|string|max:255',
            'cif' => 'required|string|max:50',
            'email' => 'required|email|max:255',
            'phone' => 'required|string|max:50',
            'del_term_id' => 'required|exists:delivery_terms,id',
            'transport_id' => 'required|exists:transports,id',
            'payment_term_id' => 'required|exists:payment_terms,id',
            'bank_entity_id' => 'required|exists:bank_entities,id',
            'discount_id' => 'required|exists:discount,id',
        ]);

        $company = Company::findOrFail($id);
        $company->update($request->all());

        return redirect()->route('company.edit', $company->id)
                         ->with('success', 'Datos de la empresa actualizados correctamente.');
    }
}
