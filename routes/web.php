<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use App\Events\RealtimeNotification;
use App\Events\TaskStatusUpdated;
use App\Notifications\NewVisitor;
use App\Notifications\TelegramNotif;
use App\Task;

Route::get('/', function () {
    // $user = Auth::user();
    // $user->notify(new NewVisitor);
    return view('welcome');
});

Route::get('/telegram-notif', function () {
    $user = Auth::user();

    $user->notify(new TelegramNotif);
    return 'Notif successfully sended';
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('email/send', 'SendmailController@sendmail');

Route::get('/tasks', function () {
    return Task::latest()->pluck('body');
});

Route::post('/tasks', function () {
    $task = Task::forceCreate(request(['body']));

    event(new RealtimeNotification($task));
});
