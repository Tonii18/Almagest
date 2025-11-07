@extends('admin.header')

@section('content')
    <div class="admin-dashboard">
        <table>
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Email</th>
                    <th>Compañia</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($users as $user)
                    <tr>
                        <td>{{ $user->firstname }}</td>
                        <td>{{ $user->secondname }}</td>
                        <td>{{ $user->email }}</td>
                        <td>{{ $user->company->name }}</td>
                        <td>
                            @if ($user->activated)
                                <form action="{{ route('admin.deactivate', $user->id) }}" method="POST"
                                    style="display:inline;">
                                    @csrf
                                    <button type="submit" class="deactivate-btn">Desactivar</button>
                                </form>
                            @else
                                <form action="{{ route('admin.activate', $user->id) }}" method="POST" style="display:inline;">
                                    @csrf
                                    <button type="submit" class="activate-btn">Activar</button>
                                </form>
                            @endif

                            <a href="{{ route('admin.edit', $user->id) }}" class="btn btn-warning">Editar</a>

                            <form action="{{ route('admin.destroy', $user->id) }}" method="POST" style="display:inline;"
                                onsubmit="return confirmDelete(event)">
                                @csrf
                                {{ method_field('DELETE') }}
                                <button type="submit" class="delete-btn">Eliminar</button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        <script>
            function confirmDelete(event) {
                event.preventDefault();
                if (confirm('¿Estás seguro de que quieres eliminar este usuario?')) {
                    event.target.submit();
                }
            }
        </script>
    </div>
@endsection
