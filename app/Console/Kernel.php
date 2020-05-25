<?php

namespace App\Console;

use App\Jobs\SendmailJob;
use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

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

        // ! Send email using own command
        // $schedule->command('daily:quote')->everyMinute();

        // ! Send email using Queuing Job
        // $schedule->job(new SendmailJob)->everyMinute();
        // $schedule->command('queue:work')->everyMinute();

        // ! Backup datase using shell exec
        $host = config('database.connections.mysql.host');
        $username = config('database.connections.mysql.username');
        $password = config('database.connections.mysql.password');
        $database = config('database.connections.mysql.database');

        $schedule->exec("mysqldump -h {$host} -u {$username} -p{$password} {$database}")
            ->everyMinute()
            ->sendOutputTo(public_path('daily_backup.sql'));
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
