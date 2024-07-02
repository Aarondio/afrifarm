<?php

use App\Http\Controllers\AddressController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\FarmersController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\LinksController;
// use App\Http\Controllers\Farmers;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\SellerAuthController;
use App\Http\Controllers\StoreController;
use App\Http\Controllers\UserController;
use App\Models\Product;
use Illuminate\Support\Facades\Auth;
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
    $user = Auth::user();
    $products = Product::inRandomOrder()->get();
    if ($user) {
        $f_products = Product::where('country', '!=', $user->country)
        ->inRandomOrder() 
        ->get();
    } else {
        $f_products = Product::inRandomOrder()->get();
    }
    return view('index', compact('products', 'f_products'));
});


Auth::routes();
Route::get('/home', [HomeController::class, 'index'])->name('home');
Route::get('/product/{id}', [ProductController::class, 'product'])->name('product');
Route::get('/checkout', [LinksController::class, 'checkout'])->name('checkout');
Route::get('/category/{id}', [LinksController::class, 'category'])->name('category');
Route::get('/international', [LinksController::class, 'international'])->name('international');
Route::get('/products', [LinksController::class, 'products'])->name('products');

Route::get('/shop/{id}', [LinksController::class, 'shop'])->name('shop');
Route::get('/profile', [LinksController::class, 'profile'])->name('profile');



Route::post('update-user', [UserController::class, 'update'])->name('update-user');

Route::get('store/{id}', [StoreController::class, 'store'])->name('store');

Route::prefix('admin')->group(function () {

});

Route::get('seller',[SellerAuthController::class, 'showLoginForm'])->name('seller');
Route::Post('sellerlogin',[SellerAuthController::class, 'login'])->name('sellerlogin');
Route::get('sellersignup',[SellerAuthController::class,'signup'])->name('sellersignup');
Route::post('sellerregister',[SellerAuthController::class,'register'])->name('sellerregister');

Route::prefix('seller')->group(function(){
   Route::get('index',[FarmersController::class,'index'])->name('myshop');
   Route::get('allproducts',[FarmersController::class,'allproducts'])->name('allproducts');
   Route::get('orders',[FarmersController::class,'orders'])->name('sellerorders');
   Route::get('completedorders',[FarmersController::class,'completedorders'])->name('completedorders');
   Route::get('orderdetails/{id}',[FarmersController::class,'orderdetails'])->name('orderdetails');
   Route::get('product/{id}',[FarmersController::class,'product'])->name('sellerproduct');
   Route::get('deleteproduct/{id}',[FarmersController::class,'deleteproduct'])->name('deleteproduct');
   Route::get('newproduct',[FarmersController::class,'newproduct'])->name('newproduct');
   Route::get('selleraccount',[FarmersController::class,'selleraccount'])->name('selleraccount');
 



   Route::post('addproduct',[FarmersController::class,'addProduct'])->name('addproduct');
   Route::post('updateproduct',[FarmersController::class,'updateProduct'])->name('updateproduct');
   Route::post('accept',[FarmersController::class,'accept'])->name('accept');
   Route::post('reject',[FarmersController::class,'reject'])->name('reject');
});


Route::prefix('/')
    ->middleware(['auth','verified'])
    ->group(function () {

        Route::get('address', [AddressController::class, 'index'])->name('address');
        Route::get('add-address', [AddressController::class, 'show'])->name('add-address');
        Route::post('create-address', [AddressController::class, 'create'])->name('create-address');
        Route::post('set-default', [AddressController::class, 'set_default'])->name('set-default');
        Route::get('delete-address/{id}', [AddressController::class, 'destroy'])->name('delete-address');

        Route::post('/add-to-cart', [CartController::class, 'addToCart'])->name('addToCart');
        Route::post('/updatecart', [CartController::class, 'updatecart'])->name('updatecart');
        Route::post('/cartplus', [CartController::class, 'cartplus'])->name('cartplus');
        Route::post('/cartminus', [CartController::class, 'cartminus'])->name('cartminus');
        Route::get('/cart', [CartController::class, 'index'])->name('cart');
        Route::get('/deleteCart/{id}', [CartController::class, 'destroy'])->name('deleteCart');

        Route::get('/account', [LinksController::class, 'account'])->name('account');

        Route::get('orders', [OrderController::class, 'index'])->name('orders');
        Route::get('order/{order}', [OrderController::class, 'order'])->name('order');
        Route::post('createOrder', [OrderController::class, 'createOrder'])->name('createOrder');
    });



    Route::get('pendingsellers',[AdminController::class, 'pending'])->name('pendingsellers');
    Route::get('verifiedsellers',[AdminController::class, 'verified'])->name('verifiedsellers');
    Route::get('categories',[AdminController::class, 'categories'])->name('categories');
    Route::get('editcategory/{id}',[AdminController::class, 'editcategory'])->name('editcategory');
    Route::get('admindashboard',[AdminController::class, 'index'])->name('admindashboard');

    Route::post('addcategory',[AdminController::class, 'addcategory'])->name('addcategory');
    Route::post('updatecategory',[AdminController::class, 'updatecategory'])->name('updatecategory');
    Route::post('deletecategory',[AdminController::class, 'deleteCategory'])->name('deletecategory');
    Route::post('verifyseller',[AdminController::class, 'verifyseller'])->name('verifyseller');