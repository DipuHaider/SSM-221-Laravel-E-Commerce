<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Backend\Product;
use App\Models\Backend\Category;
use App\Models\Backend\Brand;
use Faker\Generator as Faker;
use Illuminate\Support\Str;

$factory->define(App\Models\Backend\Product::class, function (Faker $faker) {
	$category_id = DB::table('categories')->pluck('id');
	$brand_id = DB::table('brands')->pluck('id');
    return [
        'title' 		=> $faker->sentence(2),
        'slug'			=> $faker->sentence(2),
        'description'   => $faker->paragraph(1),
        'regular_price' => $faker->regexify('[0-9]{2}'.'00'),
        'offer_price' 	=> $faker->regexify('[0-9]{1}'.'000'),
        'quantity' 		=> $faker->regexify('[0-9]{2}'),
        'status' 		=> $faker->regexify('[0-1]{1}'),
        'quantity' 		=> $faker->regexify('[0-9]{2}'),
        'category_id' 	=> $faker->randomElement($category_id),
        'brand_id' 		=> $faker->randomElement($brand_id),
    ];
});
