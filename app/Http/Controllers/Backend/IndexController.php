<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;

class IndexController extends Controller
{
    public function indexProduct(){
        return view('include.backend.pages.product.addProduct');
    }
    public function indexUser(){
        $roles = Role::all();
        return view('include.backend.pages.user.addUser', compact("roles"));
    }
}
