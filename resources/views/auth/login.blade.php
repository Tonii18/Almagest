@extends('layouts.guest')

@section('title', 'Inicio de sesion')

@section('content')
    <section class="login-section">
        <div class="login-container">
            <div class="login-card">
                <h2>Iniciar sesion <span>Almagest</span></h2>
                <form class="login-form">
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" id="email" placeholder="you@example.com" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Contraseña</label>
                        <input type="password" id="password" placeholder="********" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Iniciar sesion</button>
                </form>
                <p class="signup-link">
                    ¿No tienes cuenta? <a href="{{ route('register') }}">Crea una</a>
                </p>
            </div>
        </div>
    </section>
@endsection
