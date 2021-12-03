<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\cobaController;
use App\Http\Controllers\SiswaController;

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
    return view('welcome');
});



// Routing

Route::get('/coba-routing/{nama?}', function($nama = "Umam alfarizi") {
    return 'Ini adalah ' . $nama;
});



// Controller
Route::get('test/{nama}', 'App\Http\Controllers\TestController@index');

Route::get('testing', 'App\Http\Controllers\TestController@blog');



// view
Route::get('/halo', [cobaController::class, 'index']);

// Mmodel
Route::get('/siswa', [SiswaController::class, 'index']);
