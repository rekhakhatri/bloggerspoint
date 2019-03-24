<?php

use Illuminate\Database\Seeder;


class SettingsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        App\Setting::create([
            'site_name'      => "Bloggerspoint",
            'address'        => 'India, Bhopal',
            'contact_number' => '8908908978',
            'contact_email'  => 'info@bloggerspoint.com',
            'working_hour'   => 'Mon-Fri 9am-6pm',
            'support'        => 'online support',
            'street_address' => 'M.P Nagar',
            'about'          => 'Bloggerspoint! a platforms where people from diffrent walk of life comes to share their views, prespectives and thoughts on their subject of interest by stealing few hours from their hectic scehdule .If you also want to rejoice and pendown your thoughts and want to share your knowledge with the world, then come and be a part of our family by subscribing our newsletter and by signing In'

        ]);
    }
}
