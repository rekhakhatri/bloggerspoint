<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Setting;
use Session;

class SettingsController extends Controller
{
    public function __construct()
    {
        $this->middleware('admin');
    }
    public function index()
    {
        return view('admin.settings.settings')->with('settings', Setting::first());
    }
    public function update()
    {
        //dd(request()->all());
        $this->validate(request(),[
            'site_name'  => 'required',
            'contact_number'  => 'required',
            'contact_email'  => 'required',
            'address'  => 'required',
            'working_hour' => 'required',
            'support' => 'required',
            'street_address' => 'required',
            'about' => 'required'
        ]);

        $settings = Setting::first();

        $settings->site_name = request()->site_name;
        $settings->address   = request()->address;
        $settings->contact_email   = request()->contact_email;
        $settings->contact_number  = request()->contact_number;
        $settings->working_hour  = request()->working_hour;
        $settings->support  = request()->support;
        $settings->street_address  = request()->street_address;
        $settings->about = request()->about;


        $settings->save();

        Session::flash('success','Settings updated');
        return redirect()->back();

    }
}
