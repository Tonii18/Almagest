@extends('admin.header')

@section('content')

    <div class="inventory-create">
        <h2>Editar producto</h2>

        @if ($errors->any())
            <div class="validation-errors">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        <form action="{{ route('articles.update', $article->id) }}" method="POST" class="product-form">
            @csrf
            @method('PUT')

            <label>
                Nombre
                <input type="text" name="name" value="{{ old('name', $article->name) }}" required>
            </label>

            <label>
                Descripción
                <textarea name="description">{{ old('description', $article->description) }}</textarea>
            </label>

            <label>
                Precio mínimo
                <select name="price_min" id="min_price" data-selected="{{ old('price_min', $article->price_min) }}"></select>
            </label>

            <label>
                Precio máximo
                <select name="price_max" id="max_price" data-selected="{{ old('price_max', $article->price_max) }}">
                </select>
            </label>

            @php
                $colors = ['Blanco', 'Azul', 'Amarillo', 'Rojo', 'Verde', 'Ocre', 'Violeta'];
            @endphp

            <label>
                Color
                <select name="color_name" id="color">
                    @foreach ($colors as $color)
                        <option value="{{ $color }}" {{ old('color_name', $article->color_name) == $color ? 'selected' : '' }}>
                            {{ $color}}
                        </option>
                    @endforeach
                </select>
            </label>

            @php
                $weights = ['0.25', '0.50', '1.00', '2.00', '5.00', '25.00'];
            @endphp

            <label>
                Peso (kg)
                <select name="weight" id="weight">
                    @foreach ($weights as $weight)
                        <option value="{{ $weight }}" {{ old('weight', $article->weight) == $weight ? 'selected' : '' }}>
                            {{ $weight ." kg" }}
                        </option>
                    @endforeach
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
                        <option value="{{ $family->id }}" @selected($article->family_id == $family->id)>
                            {{ $family->name }}
                        </option>
                    @endforeach
                </select>
            </label>

            <div class="form-actions">
                <button type="submit" class="btn-primary">Guardar cambios</button>
                <a href="{{ route('articles.index') }}" class="btn-secondary">Cancelar</a>
            </div>
        </form>
    </div>
@endsection
