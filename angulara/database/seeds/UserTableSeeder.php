<?php

class UserTableSeeder extends Seeder
{

public function run()
{
    //DB::table('users')->delete();
    User::create(array(
        'name'     => 'Ankit verma',
        'username' => 'ankitdacoder',
        'email'    => 'ankit@gmail.com',
        'password' => Hash::make('12345'),
    ));
}

}
