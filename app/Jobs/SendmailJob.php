<?php

namespace App\Jobs;

use App\Mail\SendMailable;
use App\User;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Mail;

class SendmailJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Execute the job.
     *
     * @return void
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

            sleep(5);
        }
    }
}
