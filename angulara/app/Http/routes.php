<?php

Route::get('/', function () {
    return view('index');
});

Route::group(['prefix' => 'api'], function()
{
    Route::resource('authenticate', 'AuthenticateController', ['only' => ['index']]);
    Route::post('authenticate', 'AuthenticateController@authenticate');
    Route::get('employees','Employees@index'); 
    Route::get('logout','AuthenticateController@logout');
});

// Route::get('employees','Employees@index'); 
