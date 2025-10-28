@extends('layouts.app')

@section('header')
    <header class="guest-header">
        <div class="logo">Almagest</div>
    </header>
@endsection

@section('content')
    @yield('content')
@endsection
