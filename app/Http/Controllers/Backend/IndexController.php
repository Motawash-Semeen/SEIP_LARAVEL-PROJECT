<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function indexProduct(){
        return view('include.backend.pages.addProduct');
    }
}
