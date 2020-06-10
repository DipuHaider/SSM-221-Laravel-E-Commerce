<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Backend\Brand;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Image;
use File;

class BrandController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $brands = Brand::orderBy('id', 'desc')->get();
        return view('backend.pages.brand.manage', compact('brands'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //no need to compact 
        //$brands = Brand::orderBy('name', 'asc')->get();
        //return view('backend.pages.brand.create', compact('brands'));
        return view('backend.pages.brand.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //form validation
        $request->validate([
            'brand_name' => 'required|max:255',
        ],
        [
            'brand_name.required' => 'Please Insert a Brand Name',
        ]);

        //Store Brand in DB
        $brand = new Brand();
        $brand->name         = $request->brand_name;
        $brand->slug         = Str::slug($request->brand_name);
        $brand->description  = $request->brand_description;

        if ($request->image) {
            $image = $request->file('image');
            $img = time(). '.' . $image->getClientOriginalExtension();
            $location = public_path('images/brand/' . $img);
            Image::make($image)->save($location);
            $brand->image = $img;
        }


        $brand->save();

        //write flash message
        
        return redirect()->route('manageBrand');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Brand $brand)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Brand $brand, $id)
    {
        $brand = Brand::find($id);

        if( !is_null($brand)){
           return view('backend.pages.brand.edit', compact('brand')); 
        }
        else {
            return route('manageBrand');
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Brand $brand, $id)
    {
        //form validation
        $request->validate([
            'brand_name' => 'required|max:255',
        ],
        [
            'brand_name.required' => 'Please Insert a Brand Name',
        ]);

        //Store Brand in DB
        $brand = Brand::find($id);
        $brand->name         = $request->brand_name;
        $brand->slug         = Str::slug($request->brand_name);
        $brand->description  = $request->brand_description;

        if ($request->image) {
            //Delete Existing Image
            if ( File::exists('images/brand/' . $brand->image) ) {
                File::delete('images/brand/' . $brand->image);
            }

            //Upload new Image
            $image = $request->file('image');
            $img = time(). '.' . $image->getClientOriginalExtension();
            $location = public_path('images/brand/' . $img);
            Image::make($image)->save($location);
            $brand->image = $img;
        }


        $brand->save();

        return redirect()->route('manageBrand');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Brand $brand, $id)
    {
        $brand = Brand::find($id);

        if ( !is_null($brand)){
            
            //Delete Brand Image
            if ( File::exists('images/brand/' . $brand->image) ) {
                File::delete('images/brand/' . $brand->image);
            }
            $brand->delete();
        }
        return redirect()->route('manageBrand');
    }
}
