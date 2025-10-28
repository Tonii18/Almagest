@extends('layouts.guest')

@section('title', 'Registro')

@section('content')
    <section class="register-section">
        <div class="register-container">
            <div class="register-card">
                <h2>Crear cuenta <span>Almagest</span></h2>
                <form class="register-form">
                    <div class="form-group">
                        <label for="name">Nombre</label>
                        <input type="text" id="name" placeholder="Tu nombre" required>
                    </div>
                    <div class="form-group">
                        <label for="name">Apellido</label>
                        <input type="text" id="name" placeholder="Apellido" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Correo electrónico</label>
                        <input type="email" id="email" placeholder="you@example.com" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Contraseña</label>
                        <input type="password" id="password" placeholder="********" required>
                    </div>
                    <div class="form-group">
                        <label for="password_confirmation">Confirmar contraseña</label>
                        <input type="password" id="password_confirmation" placeholder="********" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Registrarse</button>
                </form>
                <p class="login-link">
                    ¿Ya tienes cuenta? <a href="{{ route('login') }}">Inicia sesión</a>
                </p>
            </div>
        </div>
    </section>
@endsection
