<?php

use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Backend\IndexController;
use App\Http\Controllers\Backend\ProductController;
use App\Http\Controllers\ProfileController;
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
    return view('include.frontend.pages.home');
});
Route::get('/shopPage', function () {
    return view('include.frontend.pages.shopPage');
});
Route::get('/singleProduct', function () {
    return view('include.frontend.pages.singleProduct');
});
Route::get('/cart', function () {
    return view('include.frontend.pages.cart');
});
Route::get('/checkout', function () {
    return view('include.frontend.pages.checkout');
});









Route::get('/dashboard', function () {
    return view('include.backend.partials.dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');





//CRUD

Route::middleware(['auth', 'role:Admin'])->name('admin.')->prefix('dashboard')->group(function () {
    
Route::get('/user', [IndexController::class, 'indexUser'])->name('User');


Route::get('/addUser', [UserController::class, 'create'])->name('AddUser');

Route::get('/showUser', [UserController::class, 'show'])->name('ShowUser');

Route::get('/deleteUser/{id}', [UserController::class, 'delete'])->name('DeleteUser');

Route::get('/assignRole/{id}', [UserController::class, 'assignRole'])->name('assignRole');

Route::get('/removeRole/{id}', [UserController::class, 'removeRole'])->name('removeRole');

Route::get('/editUser/{id}', [UserController::class, 'edit'])->name('editUser');

Route::post('/updateUser/{id}', [UserController::class, 'update'])->name('updateUser');


});









//CRUD
Route::get('/dashboard/product', [IndexController::class, 'indexProduct'])->middleware(['auth', 'verified'])->name('Product');


Route::get('/dashboard/addProduct', [ProductController::class, 'create'])->middleware(['auth', 'verified'])->name('AddProduct');

Route::get('/dashboard/showProduct', [ProductController::class, 'show'])->middleware(['auth', 'verified'])->name('ShowProduct');

Route::get('/dashboard/deleteProduct/{id}', [ProductController::class, 'delete'])->middleware(['auth', 'verified'])->name('DeleteProduct');

Route::get('/dashboard/statusUp/{id}', [ProductController::class, 'statusUp'])->middleware(['auth', 'verified'])->name('statusUp');

Route::get('/dashboard/statusDown/{id}', [ProductController::class, 'statusDown'])->middleware(['auth', 'verified'])->name('statusDown');

Route::get('/dashboard/editProduct/{id}', [ProductController::class, 'edit'])->middleware(['auth', 'verified'])->name('edit');

Route::post('/dashboard/updateProduct/{id}', [ProductController::class, 'update'])->middleware(['auth', 'verified'])->name('update');





Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';
