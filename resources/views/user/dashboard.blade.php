@extends('user.header')

@section('title', 'Menú de usuario')

@section('content')

    <div class="user-dashboard">
        <div class="user-dashboard-actions">
            <a href="{{ route('company.profile') }}" class="dashboard-card">
                <i class="fa-solid fa-chart-pie"></i>
                <span>Datos de mi empresa</span>
            </a>

            <a href="" class="dashboard-card secondary">
                <i class="fa-solid fa-clipboard-list"></i>
                <span>Mis pedidos</span>
            </a>
        </div>
    </div>

@endsection
