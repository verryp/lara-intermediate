<?php

use App\Task;
use Illuminate\Database\Seeder;

class TasksTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $tasks = [
            [
                'body' => 'Officia reprehenderit est velit esse dolore ex anim nostrud velit dolore.'
            ], [
                'body' => 'Proident aute aute est consequat tempor ex dolore aliqua commodo commodo incididunt.'
            ], [
                'body' => 'Ut cillum qui sint pariatur aliquip nisi.'
            ]
        ];

        foreach ($tasks as $task) {
            Task::create($task);
        }
    }
}
