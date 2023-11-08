<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\StudentController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['middleware' => 'api'], function(){

/// ------> Se establece  el estudiante
    Route::get('search/{document}', [StudentController::class, 'search_document']);
    Route::get('students', [StudentController::class, 'index']);
    Route::get('students/{uuid}', [StudentController::class, 'show']);
    Route::post('students', [StudentController::class, 'store']);
    Route::put('students/{uuid}/edit', [StudentController::class, 'update'])->name('students.update');
    Route::put('students/{uuid}/asistencia', [StudentController::class, 'asistencia'])->name('students.asistencia');
    Route::put('document/{uuid}', [StudentController::class, 'updateDocument']);
    Route::delete('students/{uuid}', [StudentController::class, 'destroy']);


/// ------> Seleccción de programas
    Route::post('selection/{uuid}', [StudentController::class, 'firstSelected']);
    Route::get('programs', [StudentController::class, 'indexPrograms']);
    Route::get('reporte/{uuid}', [StudentController::class, 'reportFinal']);
    Route::post('/el', [StudentController::class, 'uploadData']);
});


