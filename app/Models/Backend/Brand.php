<?php

namespace App\Models\Backend;
//if category-model not in same folder as brand-model then we have to call category model here..
//namespace App\Models\Backend\Category;

use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
    public function products(){
    	return $this->hasMany(Category::class);
    }
}
