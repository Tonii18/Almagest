@extends('layouts.app')

@section('header')
    <header class="admin-header">
        <div class="header-center">
            Panel de Administracion
        </div>

        <div class="header-right">
            <form method="POST" action="{{ route('logout') }}">
                @csrf
                <button type="submit">Cerrar Sesion</button>
            </form>
        </div>

    </header>
@endsection

@section('content')
    @yield('content')
@endsection
