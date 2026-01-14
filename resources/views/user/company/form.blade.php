@extends('user.header')

@section('content')
    <div class="company-profile">

        <h1>Formulario de envío</h1>

        @if (session('success'))
            <div class="alert alert-success">{{ session('success') }}</div>
        @endif

        @if (session('error'))
            <div class="alert alert-danger">{{ session('error') }}</div>
        @endif

        <form action="{{ route('pdf.sendEmail') }}" method="POST" id="emailForm">
            @csrf

            <div class="users-grid">
                @forelse($users as $user)
                    <div class="user-card">
                        <div class="user-info">
                            <h3>{{ $user->firstname }}</h3>
                            <p>{{ $user->email }}</p>
                            <p>{{ $user->company->name }}</p>
                        </div>
                        <input type="hidden" name="emails[]" value="{{ $user->email }}">
                    </div>
                @empty
                    <p>No hay usuarios disponibles</p>
                @endforelse
            </div>

            @error('emails')
                <div class="alert alert-danger mt-2">{{ $message }}</div>
            @enderror

            <button type="submit" class="btn btn-primary mt-3">Enviar PDFs</button>
            <a href="{{ route('user.dashboard') }}" class="btn-secondary">Cancelar</a>
        </form>

    </div>
@endsection
