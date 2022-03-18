<?php

namespace App\Http\Controllers;

use App\Models\Conference;
use App\Models\Section;
use App\Models\Supervisor;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index () {
        $conference = Conference::take(1)->first();
        $sections =Section::all();
        $supervisors = Supervisor::all();

        return view('home', compact('conference', 'sections', 'supervisors'));
    }
}
