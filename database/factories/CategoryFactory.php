<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Backend\Category;
use Faker\Generator as Faker;
use Illuminate\Support\Str;

$factory->define(App\Models\Backend\Category::class, function (Faker $faker) {
    return [
        'name' 			=> $faker->sentence(2),
        'slug'			=> $faker->sentence(2),
        'description'   => $faker->paragraph(1),
    ];
});
