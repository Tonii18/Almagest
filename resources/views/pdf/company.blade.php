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
                <th>Codigo</th>
            </tr>
            <tr>
                <td rowspan="6" class="vertical">Logotipo</td>
                <td>Nombre</td>
                <td colspan="3"> {{ $nombre ?? '' }}</td>
            </tr>
            <tr>
                <td>Dirección</td>
                <td colspan="3">{{ $direccion ?? '' }}</td>
            </tr>
            <tr>
                <td>Población</td>
                <td>{{ $poblacion ?? '' }}</td>
                <td>CIF/NIF</td>
                <td>{{ $cif ?? '' }}</td>
            </tr>
            <tr>
                <td>Persona de contacto</td>
                <td>{{ $contacto ?? '' }}</td>
                <td>Cargo</td>
                <td>{{ $cargo ?? '' }}</td>
            </tr>
            <tr>
                <td>Correo electrónico</td>
                <td>{{ $email ?? '' }}</td>
                <td>Teléfono</td>
                <td>{{ $telefono ?? '' }}</td>
            </tr>
        </table>
        <br>
        <table>
            <tr>
                <td>Plazo de entrega:</td>
                <td>{{ $plazo_entrega ?? '' }}</td>
                <td>Descuentos:</td>
                <td>{{ $descuentos ?? '' }}</td>
            </tr>
            <tr>
                <td>Portes:</td>
                <td colspan="3">{{ $portes ?? '' }}</td>
            </tr>
            <tr>
                <td>Condiciones de pago:</td>
                <td colspan="3">{{ $condiciones_pago ?? '' }}</td>
            </tr>
            <tr>
                <td>Entidad bancaria:</td>
                <td colspan="3">{{ $banco ?? '' }}</td>
            </tr>
        </table>
    </body>
</html>
