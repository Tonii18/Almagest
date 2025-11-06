@extends('layouts.app')

@section('header')
    <header class="User-header">
        <div class="header-center">
            Welcome To User Panel
        </div>

        <div class="header-right">
            <form method="POST" action="{{ route('logout') }}">
                @csrf
                <button type="submit">Log out</button>
            </form>
        </div>

    </header>
@endsection

@section('content')
    @yield('content')
@endsection
