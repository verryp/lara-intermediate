<?php

namespace App\Console\Commands;

use App\User;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Mail;

class DailyQuote extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'daily:quote';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Send daily quote to all user';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
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
    }
}
