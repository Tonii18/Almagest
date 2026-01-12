<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Catálogo de productos</title>
        <style>
            body { font-family: DejaVu Sans, sans-serif; font-size: 11px; }
            table { width: 100%; border-collapse: collapse; }
            th, td { border: 1px solid #000; padding: 4px; }
            .title { background: #eee; font-weight: bold; text-align: center; }
            .company { color: red; font-weight: bold; }
        </style>
    </head>
    <body>
        <table>
            <tr>
                <th colspan="8" class="title">
                    CATÁLOGO de productos de la empresa
                    <span class="company">{{ $company->name }}</span>
                </th>
            </tr>
            <tr>
                <th>product id</th>
                <th>family name</th>
                <th>article name</th>
                <th>article description</th>
                <th>product price</th>
                <th>article color name</th>
                <th>article weight</th>
                <th>article size</th>
            </tr>

            @foreach($products as $product)
            <tr>
                <td>{{ $product->id }}</td>
                <td>{{ $product->family->name ?? '' }}</td>
                <td>{{ $product->article->name ?? '' }}</td>
                <td>{{ $product->article->description ?? '' }}</td>
                <td>{{ $product->price }}</td>
                <td>{{ $product->article->color_name ?? '' }}</td>
                <td>{{ $product->article->weight ?? '' }}</td>
                <td>{{ $product->article->size ?? '' }}</td>
            </tr>
        @endforeach
        </table>
    </body>
</html>
