@extends('layouts.guest')

@section('title', 'Inicio')

@section('content')
<section class="company-section">
    <div class="company-container">
        <!-- Cuadro de descripción de la empresa -->
        <div class="company-card description-card">
            <h2>Sobre <span>Almagest</span></h2>
            <p>
                Almagest es una empresa dedicada a la transformación digital, ofreciendo soluciones innovadoras
                en impresión 3D, desarrollo de videojuegos, robótica, IoT y más. Nuestro objetivo es impulsar
                a nuestros clientes hacia un futuro tecnológico con creatividad y eficiencia.
            </p>
        </div>

        <!-- Rectángulo de información de contacto -->
        <div class="company-card contact-card">
            <h3>Contacto</h3>
            <p><strong>Dirección:</strong> Calle Ejemplo 123, Ciudad, País</p>
            <p><strong>Teléfono:</strong> +34 123 456 789</p>
            <p><strong>Email:</strong> contacto@almagest.com</p>
            <p><strong>Horario:</strong> Lunes - Viernes: 9:00 - 18:00</p>
        </div>
    </div>
</section>
@endsection
