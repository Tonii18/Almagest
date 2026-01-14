@extends('user.header')

@section('content')
    <div class="company-profile">

        <h1>Datos de la empresa</h1>

        @if (session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif

        <form action="{{ route('company.update', $company->id) }}" method="POST" class="company-form">
            @csrf
            @method('PUT')

            {{-- Código --}}
            <div class="form-group">
                <label>Código</label>
                <input type="text" value="{{ $company->id }}" disabled>
            </div>

            {{-- Nombre --}}
            <div class="form-group">
                <label>Nombre</label>
                <input type="text" name="name" value="{{ old('name', $company->name) }}" required>
            </div>

            {{-- Dirección --}}
            <div class="form-group">
                <label>Dirección</label>
                <input type="text" name="address" value="{{ old('address', $company->address) }}" required>
            </div>

            {{-- Población --}}
            <div class="form-group">
                <label>Población</label>
                <input type="text" name="city" value="{{ old('city', $company->city) }}" required>
            </div>

            {{-- CIF --}}
            <div class="form-group">
                <label>CIF</label>
                <input type="text" name="cif" value="{{ old('cif', $company->cif) }}" required>
            </div>

            {{-- Persona de contacto --}}
            <div class="form-group">
                <label>Persona de contacto</label>
                <input type="text"
                    value="{{ optional($company->contactPerson->first())->firstname }} {{ optional($company->contactPerson->first())->secondname }}"
                    disabled>
            </div>

            {{-- Cargo --}}
            <div class="form-group">
                <label>Cargo</label>
                <input type="text" value="Gerente" disabled>
            </div>

            {{-- Email --}}
            <div class="form-group">
                <label>Correo electrónico</label>
                <input type="email" name="email" value="{{ old('email', $company->email) }}" required>
            </div>

            {{-- Teléfono --}}
            <div class="form-group">
                <label>Teléfono</label>
                <input type="text" name="phone" value="{{ old('phone', $company->phone) }}" required>
            </div>

            {{-- Plazo de entrega --}}
            <div class="form-group">
                <label>Plazo de entrega</label>
                <select name="del_term_id" required>
                    @foreach ($deliveryTerms as $term)
                        <option value="{{ $term->id }}" @selected($company->del_term_id == $term->id)>
                            {{ $term->description }}
                        </option>
                    @endforeach
                </select>
            </div>

            {{-- Portes --}}
            <div class="form-group">
                <label>Portes</label>
                <select name="transport_id" required>
                    @foreach ($transportPrices as $transport)
                        <option value="{{ $transport->id }}" @selected($company->transport_id == $transport->id)>
                            {{ $transport->price }}
                        </option>
                    @endforeach
                </select>
            </div>

            {{-- Condiciones de pago --}}
            <div class="form-group">
                <label>Condiciones de pago</label>
                <select name="payment_term_id" required>
                    @foreach ($paymentTerms as $term)
                        <option value="{{ $term->id }}" @selected($company->payment_term_id == $term->id)>
                            {{ $term->description }}
                        </option>
                    @endforeach
                </select>
            </div>

            {{-- Entidad bancaria --}}
            <div class="form-group">
                <label>Entidad bancaria</label>
                <select name="bank_entity_id" required>
                    @foreach ($bankEntities as $bank)
                        <option value="{{ $bank->id }}" @selected($company->bank_entity_id == $bank->id)>
                            {{ $bank->name }}
                        </option>
                    @endforeach
                </select>
            </div>

            {{-- Descuento --}}
            <div class="form-group">
                <label>Descuento</label>
                <select name="discount_id" required>
                    @foreach ($discounts as $discount)
                        <option value="{{ $discount->id }}" @selected($company->discount_id == $discount->id)>
                            {{ $discount->discount }}
                        </option>
                    @endforeach
                </select>
            </div>

            {{-- Acciones --}}
            <div class="form-actions">
                <a href="{{ route('pdf.company', $company->id) }}" class="btn-primary">Descargar PDF Empresa</a>
                <a href="{{ route('pdf.products') }}" class="btn-primary">Descargar PDF Productos</a>
                <a href="{{ route('pdf.form') }}" class="btn-primary">Formulario</a>
                <a href="{{ route('user.dashboard') }}" class="btn-secondary">Cancelar</a>
            </div>

        </form>
    </div>
@endsection
