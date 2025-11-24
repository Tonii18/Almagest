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
                <select name="price_min" id="min_price"> </select>
            </label>

            <label>
                Precio máximo
                <select name="price_max" id="max_price"> </select>
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
                <fieldset style="background-color: white" id="fieldset">
                    <div class="radio">
                        <label for="number">Número</label>
                        <input type="radio" id="number" name="radio" value="number">
                    </div>
                    <div>
                        <label for="simple_value">Valor simple</label>
                        <input type="radio" id="simple_value" name="radio" value="simple_value">
                    </div>
                    <div>
                        <label for="compound_value">Valor compuesto</label>
                        <input type="radio" id="compound_value" name="radio" value="compound_value">
                    </div>
                    <div class="select-container" id="select-container">

                    </div>
                </fieldset>
            </label>

            <label>
                Familia
                <select name="family_id" id="family_selection">
                    <option value="">Selecciona una familia</option>
                    @foreach ($families as $family)
                        <option value="{{ $family->id }}">{{ $family->name }}</option>
                    @endforeach
                </select>
            </label>

            <div class="form-actions">
                <button type="submit" class="btn-primary">Guardar</button>
                <a href="{{ route('articles.index') }}" class="btn-secondary">Cancelar</a>
            </div>
        </form>
    </div>
@endsection
