<?php

use Illuminate\Support\Facades\Route;

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

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/dashboard', 'HomeController@dashboard')->name('dashboard');

Route::get('/frontend', 'Frontend\FrontendController@index')->name('frontend');
Route::get('/shop', 'Frontend\FrontendController@shop')->name('shop');

/*
|--------------------------------------------------------------------------
| Backend Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Product Category Routes

Route::group(['prefix' => '/categories'], function(){
	Route::get('/manage', 'Backend\CategoryController@index')->name('manageCategory');

	//Show create page and Store after submit
	Route::get('/create', 'Backend\CategoryController@create')->name('createCategory');
	Route::post('/create', 'Backend\CategoryController@store')->name('storeCategory');

	//Show Edit page and Update after submit
	Route::get('/edit/{id}', 'Backend\CategoryController@edit')->name('editCategory');
	Route::post('/edit/{id}', 'Backend\CategoryController@update')->name('updateCategory');

	//Delete category from manage
	Route::post('/delete/{id}', 'Backend\CategoryController@destroy')->name('deleteCategory');
});


// Product Brand Routes

Route::group(['prefix' => '/brands'], function(){
	Route::get('/manage', 'Backend\BrandController@index')->name('manageBrand');

	//Show create page and Store after submit
	Route::get('/create', 'Backend\BrandController@create')->name('createBrand');
	Route::post('/create', 'Backend\BrandController@store')->name('storeBrand');

	//Show Edit page and Update after submit
	Route::get('/edit/{id}', 'Backend\BrandController@edit')->name('editBrand');
	Route::post('/edit/{id}', 'Backend\BrandController@update')->name('updateBrand');

	//Delete Brand from manage
	Route::post('/delete/{id}', 'Backend\BrandController@destroy')->name('deleteBrand');
});

// Product Routes

Route::group(['prefix' => '/products'], function(){
	Route::get('/manage', 'Backend\ProductController@index')->name('manageProduct');

	//Show create page and Store after submit
	Route::get('/create', 'Backend\ProductController@create')->name('createProduct');
	Route::post('/create', 'Backend\ProductController@store')->name('storeProduct');

	//Show Edit page and Update after submit
	Route::get('/edit/{id}', 'Backend\ProductController@edit')->name('editProduct');
	Route::post('/edit/{id}', 'Backend\ProductController@update')->name('updateProduct');

	//Delete Product from manage
	Route::post('/delete/{id}', 'Backend\ProductController@destroy')->name('deleteProduct');
});

// Division Routes

Route::group(['prefix' => '/divisions'], function(){
	Route::get('/manage', 'Backend\DivisionController@index')->name('manageDivision');

	//Show create page and Store after submit
	Route::get('/create', 'Backend\DivisionController@create')->name('createDivision');
	Route::post('/create', 'Backend\DivisionController@store')->name('storeDivision');

	//Show Edit page and Update after submit
	Route::get('/edit/{id}', 'Backend\DivisionController@edit')->name('editDivision');
	Route::post('/edit/{id}', 'Backend\DivisionController@update')->name('updateDivision');

	//Delete Division from manage
	Route::post('/delete/{id}', 'Backend\DivisionController@destroy')->name('deleteDivision');
});


// District Routes

Route::group(['prefix' => '/districts'], function(){
	Route::get('/manage', 'Backend\DistrictController@index')->name('manageDistrict');

	//Show create page and Store after submit
	Route::get('/create', 'Backend\DistrictController@create')->name('createDistrict');
	Route::post('/create', 'Backend\DistrictController@store')->name('storeDistrict');

	//Show Edit page and Update after submit
	Route::get('/edit/{id}', 'Backend\DistrictController@edit')->name('editDistrict');
	Route::post('/edit/{id}', 'Backend\DistrictController@update')->name('updateDistrict');

	//Delete District from manage
	Route::post('/delete/{id}', 'Backend\DistrictController@destroy')->name('deleteDistrict');
});