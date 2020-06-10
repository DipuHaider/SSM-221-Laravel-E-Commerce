<?php

namespace App\Models\Backend;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    //to get the data from category table to show in product manage / frontend
    public function category() {
    	return $this->belongsTo(Category::class);
    }

    //to get the data from brand table to show in product manage / frontend
    public function brand() {
    	return $this->belongsTo(Brand::class);
    }

    //ORM for Product And Its Images
    public function images() {
    	return $this->hasMany(ProductImage::class);
    }
}
