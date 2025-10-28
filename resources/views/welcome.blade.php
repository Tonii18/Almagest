@extends('layouts.guest') {{-- Extends from app.blade.php layout --}}

@section('title', 'Bienvenido') {{-- Set the page title --}}

@section('content') {{-- Custome the current page content --}}
    <section class="hero hero--light">
        <div class="hero__content">
            <div class="hero__card">
                <h2>Bienvenido a <span>Almagest</span></h2>
                <p>Optimiza, controla y gestiona tu almacén con una plataforma intuitiva, segura y moderna.</p>
                <div class="hero__actions">
                    <a href="{{ route('login') }}" class="btn btn-primary">Entrar</a>
                    {{-- TODO: Set link to more information --}}
                    <a href="#" class="btn btn-outline">Más información</a>
                </div>
            </div>
        </div>
    </section>
@endsection
