@extends('admin.header')

@section('content')
<div class="inventory-page">

    <div class="inventory-add-row">
        <a href="{{ route('articles.create') }}" class="btn-add-product">
            + Añadir producto
        </a>
    </div>


    @if(session('success'))
        <div class="flash-success">{{ session('success') }}</div>
    @endif

    <div class="products-grid">
        @forelse($articles as $article)
            <article class="product-card">
                <header class="product-card__header">
                    <h3 class="product-card__name">{{ $article->name }}</h3>
                    <span class="product-card__color">{{ $article->color_name }}</span>
                </header>

                <div class="product-card__body">
                    <p class="product-card__description">{{ $article->description }}</p>

                    <ul class="product-card__meta">
                        <li><strong>Precio min:</strong> €{{ number_format($article->price_min, 2) }}</li>
                        <li><strong>Precio max:</strong> €{{ number_format($article->price_max, 2) }}</li>
                        <li><strong>Peso:</strong> {{ $article->weight ?? '-' }} kg</li>
                        <li><strong>Talla:</strong> {{ $article->size ?? '-' }}</li>
                    </ul>
                </div>

                <footer class="product-card__footer">
                    <a href="#" class="btn-card-action">Editar</a>
                    <a href="#" class="btn-card-action btn-danger">Eliminar</a>
                </footer>
            </article>
        @empty
            <p class="no-products">No hay productos en el inventario.</p>
        @endforelse
    </div>
</div>
@endsection
