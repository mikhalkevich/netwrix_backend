<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::get('partner/all', [Controllers\PartnerController::class, 'getAll']);
Route::get('countries', [Controllers\CountryController::class, 'getAll']);
Route::get('states/{country_id}', [Controllers\StateController::class, 'getStates']);
Route::middleware('auth:sanctum')->group(function(){
    Route::post('logout',[Controllers\AuthController::class, 'logout']);
    Route::get('profile',[Controllers\AuthController::class, 'profile']);
    Route::resource('partner', Controllers\PartnerController::class)->except('edit', 'create');
    Route::resource('catalog', Controllers\CatalogController::class);
});
Route::post('register', [Controllers\AuthController::class, 'register']);
Route::post('login', [Controllers\AuthController::class, 'login']);



