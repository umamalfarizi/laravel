<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TestController extends Controller
{
    public function index($nama)
    {
        return "Semoga saya bisa berhenti " . $nama;
    }
    public function blog()
    {
        return view('blog');
    }
}
