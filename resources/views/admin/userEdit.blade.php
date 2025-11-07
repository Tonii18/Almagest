@extends('admin.header')

@section('content')
    <div class="admin-edit">
        <div class="container mt-4">
            <h2>Editar usuario</h2>

            <form action="{{ route('admin.update', $user->id) }}" method="POST">
                @csrf
                @method('PUT')

                <div class="form-group mb-3">
                    <label for="firstname">Nombre:</label>
                    <input type="text" id="firstname" name="firstname" class="form-control"
                        value="{{ old('firstname', $user->firstname) }}">
                </div>

                <div class="form-group mb-3">
                    <label for="secondname">Apellido:</label>
                    <input type="text" id="secondname" name="secondname" class="form-control"
                        value="{{ old('secondname', $user->secondname) }}">
                </div>

                <div class="form-group mb-3">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" class="form-control"
                        value="{{ old('email', $user->email) }}">
                </div>

                <div class="form-group mb-3">
                    <label for="company_selection">Compañía:</label>
                    <select name="company_id" id="company_selection" class="form-control">
                        <option value="">Selecciona una compañía</option>
                        @foreach ($companies as $company)
                            <option value="{{ $company->id }}" @selected($user->company_id == $company->id)>
                                {{ $company->name }}
                            </option>
                        @endforeach
                    </select>
                </div>

                <button type="submit" class="btn btn-primary">Guardar cambios</button>
                <a href="{{ route('admin.dashboard') }}" class="btn btn-secondary">Cancelar</a>
            </form>
        </div>
    </div>
@endsection
