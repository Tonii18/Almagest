@extends('admin.header')

@section('content')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <div class="admin-dashboard">
        <table>
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>Email</th>
                    <th>Compañía</th>
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
                        <td class="action-buttons">
                            @if ($user->activated)
                                <form action="{{ route('admin.deactivate', $user->id) }}" method="POST"
                                    style="display:inline;">
                                    @csrf
                                    <button type="submit" class="deactivate-btn">
                                        <i class="fas fa-ban"></i> Desactivar
                                    </button>
                                </form>
                            @else
                                <form action="{{ route('admin.activate', $user->id) }}" method="POST"
                                    style="display:inline;">
                                    @csrf
                                    <button type="submit" class="activate-btn">
                                        <i class="fas fa-check-circle"></i> Activar
                                    </button>
                                </form>
                            @endif

                            <a href="{{ route('admin.edit', $user->id) }}" class="edit-btn">
                                <i class="fas fa-edit"></i> Editar
                            </a>

                            <form action="{{ route('admin.destroy', $user->id) }}" method="POST" style="display:inline;"
                                onsubmit="return confirmDelete(event)">
                                @csrf
                                {{ method_field('DELETE') }}
                                <button type="submit" class="delete-btn">
                                    <i class="fas fa-trash-alt"></i> Eliminar
                                </button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>

        <script>
            function confirmDelete(event) {
                event.preventDefault();
                if (confirm('¿Estás seguro de que quieres eliminar este usuario? ')) {
                    event.target.submit();
                }
            }
        </script>
    </div>
@endsection
