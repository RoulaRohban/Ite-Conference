<?php

namespace App\Http\Controllers;

use App\Http\Requests\Contact\StoreContactRequest;
use App\Models\Conference;
use App\Models\ContactUs;
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
    public function storeContact(StoreContactRequest $request){
        $validated_data = $request->validated();
        ContactUs::create($validated_data);
        return redirect()->route('home')->with('success', 'تم إرسال الطلب بنجاح');
    }
}
