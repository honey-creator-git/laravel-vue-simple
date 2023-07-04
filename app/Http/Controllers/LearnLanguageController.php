<?php

namespace App\Http\Controllers;

use App\Models\learn_language;
use Illuminate\Http\Request;

class LearnLanguageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datas = learn_language::all()->toArray();
        return $datas;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\learn_language  $learn_language
     * @return \Illuminate\Http\Response
     */
    public function show(learn_language $learn_language)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\learn_language  $learn_language
     * @return \Illuminate\Http\Response
     */
    public function edit(learn_language $learn_language)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\learn_language  $learn_language
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, learn_language $learn_language)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\learn_language  $learn_language
     * @return \Illuminate\Http\Response
     */
    public function destroy(learn_language $learn_language)
    {
        //
    }
}
