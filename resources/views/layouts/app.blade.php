<!doctype html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Almagest - @yield('title', 'Inicio')</title>

    {{-- Import Poppins Font --}}
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    {{-- Vite Files --}}
    @vite(['resources/sass/app.scss', 'resources/js/app.js'])
</head>

<body>

    <header class="main-header">
        {{-- <div class="container">
            <h1 class="logo">Almagest</h1>
        </div> --}}
        @yield('header')
    </header>

    <main>
        @yield('content')
    </main>

    <footer class="main-footer">
        <div class="container">
            &copy; {{ date('Y') }} Almagest — Gestión de almacén
        </div>
    </footer>

</body>

</html>
