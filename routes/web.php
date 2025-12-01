<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\ArticleController;
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

// Information

Route::get('/information', [InformationController::class, 'index'])->name('information');

// User home

Route::get('/home', function () {
    $user = auth()->user();
    if ($user->type === 'A') {
        return redirect()->route('admin.dashboard');
    }
    return redirect()->route('user.dashboard');
})->middleware('auth', 'verified')->name('home');

// Admin panel

Route::get('/admin/dashboard', [AdminController::class, 'index'])->middleware('auth')->name('admin.dashboard');


// User panel

Route::get('/user/dashboard', function () {
    return view('user.dashboard');
})->middleware('auth')->name('user.dashboard');

// This route controls everything related to users authentication

Auth::routes(['verify' => true]);

// Route Admin Controll

Route::resource('admin', AdminController::class);

// Custom routes for the activate and deactivate methods

Route::post('/admin/{id}/activate', [App\Http\Controllers\AdminController::class, 'activate'])->name('admin.activate');
Route::post('/admin/{id}/deactivate', [App\Http\Controllers\AdminController::class, 'deactivate'])->name('admin.deactivate');

//

Route::resource('articles', ArticleController::class);
