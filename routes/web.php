<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\InformationController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/


Route::get('/', function () {
    return view('welcome');
})->name('welcome');

// Login
Route::get('/login', [LoginController::class, 'index'])->name('login');
Route::post('/login', [LoginController::class, 'login'])->name('login.post');

// Register
Route::get('/register', [RegisterController::class, 'index'])->name('register');
Route::post('/register', [RegisterController::class, 'register'])->name('register.post');

// Information
Route::get('/information', [InformationController::class, 'index'])->name('information');

// User home
Route::get('/home', function() {
    $user = auth()->user();
    if ($user->type === 'a') {
        return redirect()->route('admin.dashboard');
    }
    return redirect()->route('user.dashboard');
})->middleware('auth')->name('home');

// Admin panel
Route::get('/admin/dashboard', function () {
    return view('admin.dashboard');
})->middleware('auth')->name('admin.dashboard');

// User panel
Route::get('/user/dashboard', function () {
    return view('user.dashboard');
})->middleware('auth')->name('user.dashboard');


