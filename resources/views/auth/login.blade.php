@extends('layouts.guest')

@section('title', 'Inicio de sesion')

@section('content')
    <section class="login-section">
        <div class="login-container">
            <div class="login-card">
                <h2>Iniciar sesion <span>Almagest</span></h2>
                @if ($errors->any())
                    <div class="alert alert-danger" style="margin-bottom: 15px;">
                        <ul style="margin: 0; padding-left: 20px;">
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
                <form class="login-form" method="POST" action="{{ route('login') }}">
                    @csrf
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" id="email" name="email" placeholder="you@example.com" required
                            value="{{ old('email') }}">
                    </div>
                    <div class="form-group">
                        <label for="password">Contraseña</label>
                        <input type="password" id="password" name="password" placeholder="********" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Iniciar sesion</button>
                </form>
                <p class="signup-link">
                    ¿No tienes cuenta? <a href="{{ route('register') }}">Crea una</a>
                </p>
                @if (session('status'))
                    <div class="alert alert-succes" style="margin-bottom: 1rem;">
                        {{ session('status') }}
                    </div>
                @endif
            </div>
        </div>
    </section>
@endsection
