<?php

use Illuminate\Database\Seeder;

use App\BlogPost;

class BlogPostsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        BlogPost::truncate();

        $faker = \Faker\Factory::create();

        for ($i = 0; $i < 50; ++$i) {
            BlogPost::create([
                'title' => $faker->sentence,
                'text' => $faker->paragraph,
                'image' => 'images/1.jpeg',
            ]);
        }
    }
}
