<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\Category;
use App\Models\Product;
use App\Models\Seller;
use App\Models\Address;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

class LinksController extends Controller
{
    protected $title; // Define the property

    public function __construct()
    {
        $this->title = Route::currentRouteName();
    }

    public function profile()
    {
        $user = Auth::user();
        if ($user) {
            return view('profile', compact('user'));
        } else {
            return redirect()->back();
        }
    }

    public function products()
    {
        // $user = Auth::user();

        // if($user){
        //     $products = Product::where();
        // }
        $products = Product::inRandomOrder()
                   ->get();;
        return view('products', compact('products'))->with('title', $this->title);
    }

    public function cart()
    {
        return view('cart')->with('title', $this->title);
    }

    public function checkout()
    {
        $id = Auth::id();
        $address = Address::where('user_id', $id)
            ->where('active', 1)
            ->first();

        $products = Cart::where('user_id', $id)
            ->where('status', 'Pending')
            ->where('order_id', null)
            ->with('product')
            ->get();

        if(empty($address)){
            return view('add-address')->with(['message'=>'You need to provide a delivery address']);
        }

        return view('checkout', compact('products','address'))->with('title', $this->title);
    }

    public function account(Address $address)
    {
        $address =  Address::where('user_id', Auth::id())
            ->where('active', 1)
            ->first();
        return view('account', compact('address'))->with('title', $this->title);
    }

    public function international()
    {
        $user = Auth()->user();
        if ($user) {
            $products = Product::where('country', '!=', $user->country)
            ->inRandomOrder()->get();
           
        } else {
            $products = Product::inRandomOrder()->get();;
        }

        return view('international', compact('products'))->with('title', $this->title);
    }

    public function shop($id)
    {
        $seller = Seller::find($id);
        $products = Product::where('seller_id', $id)->get();
        return view('shop', compact('seller', 'products'));
    }



    public function category($id)
    {
        $products = Product::where('category_id', $id)->get();
        $category = Category::find($id);
        $categories = Category::all();
        $category_id = $id;
        return view('category', compact('products', 'category', 'categories', 'category_id'))->with('title', $this->title);
    }
}
