<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function create(Request $req){
        $product = new Product;

        $product->name = $req->ProductName;
        $product->category_name = $req->CateName;
        $product->brand_name = $req->BrandName;
        $product->description = $req->descrip;
        $product->price = $req->price;
        $product->image = $req->file("image");
        // if( $req->hasFile("image")){
        //     $file = $req->file("image");
        //     $extension = $file->getClientOriginalExtension();
        //     $filename = time().'.'.$extension;
        //     $file->move('uploads/products/',$filename);
        //     $product->image = $filename;
        // }
        $product->status = $req->status;

        $product->save();
        return back();
    }
    public function show(){
        $products = Product::all();

        return view('include.backend.pages.product.showProduct', compact("products"));
    }

    public function delete($id){
        $product = Product::find($id);

        $product->delete();
        return back();
    }
    public function statusUp($id){
        $product = Product::find($id);
        $product->status = 1;
        $product->update();
        return back();
    }
    public function statusDown($id){
        $product = Product::find($id);
        $product->status = 0;
        $product->update();
        return back();
    }

    public function edit($id){
        $product = Product::find($id);
        
        return view('include.backend.pages.product.editProduct', compact("product"));
    }

    public function update(Request $req, $id){
        $product = Product::find($id);
        $product->name = $req->ProductName;
        $product->category_name = $req->CateName;
        $product->brand_name = $req->BrandName;
        $product->description = $req->descrip;
        $product->price = $req->price;
        $product->image = $req->image;
        
        $product->status = $req->status;
        $product->update();
        return redirect('/dashboard/showProduct');
    }
}
