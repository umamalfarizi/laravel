<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class cobaController extends Controller
{
    public function index(Request, $request)
    {
        return view('coba',['name' => 'Gper']);
    }
}
