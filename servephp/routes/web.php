<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Str;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Route::get('/', function () {
    return redirect('/login');
});


Route::get('/api', function () {
    return ['message' => 'Usted no tiene permisos para acceder aquí'];
});

require __DIR__.'/auth.php';

Auth::routes();

Route::get('/home', [App\Http\Controllers\StudentController::class, 'index'])->name('home');
Route::get('uuid', function () {
    return (string) Str::uuid();
});