<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Backend\District;
use App\Models\Backend\Division;
use Faker\Generator as Faker;
use Illuminate\Support\Str;


$factory->define(App\Models\Backend\District::class, function (Faker $faker) {
	$division_id = DB::table('divisions')->pluck('id');
    return [
        'name' 			=> $faker->sentence(1),
        'division_id'	=> $faker->randomElement($division_id),
    ];
});
