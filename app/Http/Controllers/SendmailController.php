<?php

namespace App\Http\Controllers;

use App\Jobs\SendmailJob;
use Illuminate\Http\Request;

class SendmailController extends Controller
{
    public function sendmail()
    {
        SendmailJob::dispatch()->delay(now()->addSeconds(5));

        echo "Email was sent successfully";
    }
}
