<?php

namespace App\Console;

use App\User;
use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;
use Illuminate\Support\Facades\Mail;

class Kernel extends ConsoleKernel
{
    /**
     * The Artisan commands provided by your application.
     *
     * @var array
     */
    protected $commands = [
        //
    ];

    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
        // $schedule->command('inspire')
        //          ->hourly();
        $schedule->call(function () {
            $words = [
                'Quote-d1' => 'Proident proident nulla adipisicing excepteur.',
                'Quote-d2' => 'Et ullamco consequat Lorem sint labore consequat ullamco minim ullamco dolore fugiat incididunt.',
                'Quote-d3' => 'Adipisicing non cupidatat ipsum commodo do eu eu enim est non qui sint.',
                'Quote-d4' => 'Nisi ea magna Lorem nostrud nulla commodo.',
                'Quote-d5' => 'Do enim cupidatat anim laboris labore in duis reprehenderit anim officia eu et officia magna.'
            ];

            $users = User::all();

            foreach ($users as $user) {
                $key = array_rand($words);
                $value = $words[$key];

                Mail::raw("{$value}", function ($message) use ($user) {
                    $message->from('verryp.dev@admin.com', 'Verry P');
                    $message->to($user->email, $user->name);
                    $message->replyTo('verryp.dev@admin.com', 'Verry P');
                    $message->subject('Today Quote');
                });

                sleep(3);
            }
        })->everyMinute();
    }

    /**
     * Register the commands for the application.
     *
     * @return void
     */
    protected function commands()
    {
        $this->load(__DIR__ . '/Commands');

        require base_path('routes/console.php');
    }
}
