<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Backend\Brand;
use Faker\Generator as Faker;
use Illuminate\Support\Str;

$factory->define(App\Models\Backend\Brand::class, function (Faker $faker) {
    return [
        'name' 			=> $faker->sentence(2),
        'slug'			=> $faker->sentence(2),
        'description'   => $faker->paragraph(1),
        'image'   		=> $faker->sentence(1).'png',
    ];
});
