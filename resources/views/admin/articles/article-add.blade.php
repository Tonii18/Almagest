@extends('admin.header')

@section('content')

    <div class="inventory-create">
        <h2>Añadir producto</h2>

        @if ($errors->any())
            <div class="validation-errors">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        <form action="{{ route('articles.store') }}" method="POST" class="product-form">
            @csrf

            <label>
                Nombre
                <input type="text" name="name" value="{{ old('name') }}" required>
            </label>

            <label>
                Descripción
                <textarea name="description">{{ old('description') }}</textarea>
            </label>

            <label>
                Precio mínimo
                <input type="number" name="price_min" step="0.01" value="{{ old('price_min', 0) }}" required>
                <select name="min_price" id="min_price"> </select>
            </label>

            <label>
                Precio máximo
                <input type="number" name="price_max" step="0.01" value="{{ old('price_max', 0) }}" required>
            </label>

            <label>
                Color
                <select name="color_name" id="color">
                    <option value="Blanco">Blanco</option>
                    <option value="Azul">Azul</option>
                    <option value="Amarillo">Amarillo</option>
                    <option value="Rojo">Rojo</option>
                    <option value="Verde">Verde</option>
                    <option value="Ocre">Ocre</option>
                    <option value="Violeta">Violeta</option>
                </select>
            </label>

            <label>
                Peso (kg)
                <select name="weight" id="weight">
                    <option value="0.25">0,25 Kg</option>
                    <option value="0.50">0,50 Kg</option>
                    <option value="1.00">1 Kg</option>
                    <option value="2.00">2 Kg</option>
                    <option value="5.00">5 Kg</option>
                    <option value="25.00">25 Kg</option>
                </select>
            </label>

            <label>
                Talla
                <input type="text" name="size" value="{{ old('size') }}">
            </label>

            <label>
                Familia
                <input type="text" name="family_id" value="{{ old('family_id') }}">
            </label>

            <div class="form-actions">
                <button type="submit" class="btn-primary">Guardar producto</button>
                <a href="{{ route('articles.index') }}" class="btn-secondary">Cancelar</a>
            </div>
        </form>
    </div>
@endsection
