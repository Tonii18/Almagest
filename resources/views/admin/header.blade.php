@extends('layouts.app')

@section('header')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <header class="admin-header">
        <div class="header-left">
            <i class="fas fa-cogs"></i>
            <span>Panel de Administración</span>
        </div>

        <div class="header-right">
            <div class="user-dropdown">
                <button class="dropdown-toggle">
                    <i class="fa-solid fa-gear"></i> Configuración
                    <i class="fas fa-chevron-down"></i>
                </button>

                <div class="dropdown-menu">

                    <a href="{{ route('articles.index') }}" style="text-decoration: none">
                        <i class="fas fa-cog"></i> Inventario
                    </a>

                    <a href="{{ route('admin.dashboard') }}" style="text-decoration: none">
                        <i class="fa-solid fa-user"></i> Usuarios
                    </a>

                    <form method="POST" action="{{ route('logout') }}">
                        @csrf
                        <button type="submit">
                            <i class="fas fa-sign-out-alt"></i> Cerrar Sesión
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </header>
@endsection

@section('content')
    <main class="admin-dashboard">
        @yield('content')
    </main>
@endsection
