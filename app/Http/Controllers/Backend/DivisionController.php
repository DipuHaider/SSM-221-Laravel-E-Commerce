<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Backend\Division;
use App\Models\Backend\District;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Str;


class DivisionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $divisions = Division::orderBy('priority', 'asc')->get();
        return view('backend.pages.division.manage', compact('divisions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.pages.division.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Validate the division field
        $request->validate([
            'name' => 'required|max:255',
            'priority'   => 'required',
        ],
        [
            'name' => 'Please provide valid Division name',
            'priority'   => 'Please set a Priority number to show on screen',
        ]);

        $division = new Division();
        $division->name = $request->name;
        $division->priority = $request->priority;
        $division->save();

        return redirect()->route('manageDivision');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $division = Division::find($id);
        if (!is_null($division)) {
            return view('backend.pages.division.edit', compact('division'));
        }
        else {
            return view('backend.pages.division.manage');
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // Validate the division field
        $request->validate([
            'name' => 'required|max:255',
            'priority'   => 'required',
        ],
        [
            'name' => 'Please provide valid Division name',
            'priority'   => 'Please set a Priority number to show on screen',
        ]);

        $division = Division::find($id);
        $division->name = $request->name;
        $division->priority = $request->priority;
        $division->save();

        return redirect()->route('manageDivision');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $division = Division::find($id);
        if (!is_null($division)) {
            $districts = District::where('division_id', $division->id)->get();
            foreach( $districts as $district){
               $district->delete(); 
            }
            $division->delete();
        }

        return redirect()->route('manageDivision');
    }
}
