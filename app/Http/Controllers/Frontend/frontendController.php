<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;

class frontendController extends Controller
{
    public function index(){
        $products = Product::all()->sortBy("id");
        return view('include.frontend.pages.home', compact("products"));
    }
    public function shopPage(){

        return view('include.frontend.pages.shopPage', compact("product"));
    }
    public function singleProduct($id){
        $product = Product::find($id);
        return view('include.frontend.pages.singleProduct', compact("product"));
    }
    public function cart(){
        return view('include.frontend.pages.cart');
    }
    public function checkout(){
        return view('include.frontend.pages.checkout');
    }
}

