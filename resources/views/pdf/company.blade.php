<!DOCTYPE html>
<html lang="es">
    <head charset="UTF-8">
    <title>Ficha de empresa</title>
    <style>
        body{font-family: DejaVu Sans, sans-serif; font-size: 12px;}
        table{width: 100%; border-collapse: collapse;}
        td, th {border: 1px solid #000; padding: 5px;}
        .title {text-align: center; font-weight: bold; background: #eee;}
        .vertical {
            writing-mode: vertical-rl;
            transform: rotate(180deg);
            text-align: center;
            font-weight: bold;
        }
        .no-border {border: none;}
    </style>
    </head>
    <body>
        <table>
            <tr>
                <th colspan="4" class="title">Ficha empresa</th>
                <th>Codigo: {{ $company->id ?? '' }}</th>
            </tr>
            <tr>
                 <td rowspan="6"><img src="{{ asset('img/logo.png') }}" alt="Logo de la empresa" style="width:25px;"></td>
                <td>Nombre</td>
                <td colspan="3">{{ $company->name ?? '' }}</td>
            </tr>
            <tr>
                <td>Dirección</td>
                <td colspan="3">{{ $company->address ?? '' }}</td>
            </tr>
            <tr>
                <td>Población</td>
                <td>{{ $company->city ?? '' }}</td>
                <td>CIF/NIF</td>
                <td>{{ $company->cif ?? '' }}</td>
            </tr>
            <tr>
                <td>Persona de contacto</td>
                <td>{{ optional($company->contactPerson->first())->firstname ?? '' }} {{ optional($company->contactPerson->first())->secondname ?? '' }}</td>
                <td>Cargo</td>
                <td>Gerente</td>
            </tr>
            <tr>
                <td>Correo electrónico</td>
                <td>{{ $company->email ?? '' }}</td>
                <td>Teléfono</td>
                <td>{{ $company->phone ?? '' }}</td>
            </tr>
        </table>
        <br>
        <table>
            <tr>
                <td>Plazo de entrega:</td>
                <td>{{ $company->deliveryTerm->description ?? '' }}</td>
                <td>Descuentos:</td>
                <td>{{ $company->discount->discount ?? '' }}</td>
            </tr>
            <tr>
                <td>Portes:</td>
                <td colspan="3">{{ $company->transport->price ?? '' }}</td>
            </tr>
            <tr>
                <td>Condiciones de pago:</td>
                <td colspan="3">{{ $company->paymentTerm->description ?? '' }}</td>
            </tr>
            <tr>
                <td>Entidad bancaria:</td>
                <td colspan="3">{{ $company->bankEntity->name ?? '' }}</td>
            </tr>
        </table>
    </body>
</html>
