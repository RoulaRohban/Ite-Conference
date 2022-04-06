<?php

namespace App\Http\Controllers;

use App\Http\Requests\Contact\StoreContactRequest;
use App\Models\Conference;
use App\Models\ContactUs;
use App\Models\Section;
use App\Models\Supervisor;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;

class HomeController extends Controller
{
    public function index () {
        $conference = Conference::with('translations')->take(1)->first();
        $sections =Section::with('translations')->orderBy('order', 'ASC')->get();
        $supervisors = Supervisor::with('translations')->get();

        return view('home', compact('conference', 'sections', 'supervisors'));
    }
    public function storeContact(StoreContactRequest $request){
        $validated_data = $request->validated();
        ContactUs::create($validated_data);
        return redirect()->route('home')->with('success', 'تم إرسال الطلب بنجاح');
    }

    public function switchLang($lang)
    {
        if (array_key_exists($lang, Config::get('languages'))) {
            Session::put('applocale', $lang);
        }
        return Redirect::back();
    }
}
