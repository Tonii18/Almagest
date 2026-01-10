@extends('layouts.app')

@section('header')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <header class="admin-header">
        <div class="header-left">
            <i class="fa-solid fa-user" style="color: #ffffff;"></i>
            <span>Menú de usuario</span>
        </div>

        <div class="header-right">
            <div class="user-dropdown">
                <button class="dropdown-toggle">
                    <i class="fa-solid fa-gear"></i> Configuración
                    <i class="fas fa-chevron-down"></i>
                </button>

                <div class="dropdown-menu">
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
