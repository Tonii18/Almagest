@extends('admin.header')

@section('content')
    <div class="admin-dashboard">
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Surname</th>
                    <th>Email</th>
                    <th>Company</th>
                    <th>Actions</th>
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
                                    <button type="submit">Deactivated</button>
                                </form>
                            @else
                                <form action="{{ route('admin.activate', $user->id) }}" method="POST" style="display:inline;">
                                    @csrf
                                    <button type="submit">Activated</button>
                                </form>
                            @endif
                            <form action="{{ route('admin.destroy', $user->id) }}" method="POST" style="display:inline;">
                                @csrf
                                {{ method_field('DELETE') }}
                                <button type="submit">Delete</button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
