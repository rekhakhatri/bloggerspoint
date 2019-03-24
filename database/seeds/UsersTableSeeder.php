<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       $user = App\User::create([
            'name'   => 'Rekha Khatri',
            'email'  => 'rekhakhatri45@gmail.com',
            'password' => bcrypt('password'),
            'admin'   => 1
        ]);

        App\Profile::create([
            'user_id'  => $user->id,
            'avatar'   => 'uploads/avatars/1.jpg',
            'about'    => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Non veniam beatae veritatis quidem, illo accusantium saepe nobis vitae modi dolorem natus, mollitia ut nisi et omnis minus harum doloremque esse.',
            'facebook'  => 'facebook.com',
            'youtube'   => 'youtube.com'
        ]);
    }
}
