@extends('layouts.guest')

@section('title', 'Registro')

@section('content')
    <section class="register-section">
        <div class="register-container">
            <div class="register-card">
                <h2>Crear cuenta <span>Almagest</span></h2>
                <form method="POST" action="{{ route('register') }}" class="register-form">
                    @csrf
                    <div class="form-group">
                        <label for="name">Nombre</label>
                        <input type="text" name="firstname" id="firstname" placeholder="Tu nombre" required>
                    </div>
                    <div class="form-group">
                        <label for="name">Apellido</label>
                        <input type="text" name="secondname" id="secondname" placeholder="Apellido" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Correo electrónico</label>
                        <input type="email" name="email" id="email" placeholder="you@example.com" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Contraseña</label>
                        <input type="password" name="password" id="password" placeholder="********" required>
                    </div>
                    <div class="form-group">
                        <label for="password_confirmation">Confirmar contraseña</label>
                        <input type="password" name="password_confirmation" id="password_confirmation"
                            placeholder="********" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Registrarse</button>
                </form>
                <p class="login-link">
                    ¿Ya tienes cuenta? <a href="/login">Inicia sesión</a>
                </p>
            </div>
        </div>
    </section>
@endsection
