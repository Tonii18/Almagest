@extends('layouts.app')

@section('header')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <header class="admin-header">
        <div class="header-left">
            <i class="fas fa-cogs"></i>
            <span>Panel de Administración</span>
        </div>

        <div class="header-right">
            <form method="POST" action="{{ route('logout') }}">
                @csrf
                <button type="submit" class="logout-btn">
                    <i class="fas fa-sign-out-alt"></i> Cerrar Sesión
                </button>
            </form>
        </div>
    </header>
@endsection

@section('content')
    <main class="admin-dashboard">
        @yield('content')
    </main>
@endsection
