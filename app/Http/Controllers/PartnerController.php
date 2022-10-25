<?php

namespace App\Http\Controllers;

use App\Http\Resources\PartnerResource;
use App\Models\Partner;
use Illuminate\Http\Request;

class PartnerController extends Controller
{
    public function index()
    {
        //вывод всех записей модели
        return PartnerResource::collection(Partner::all());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // вывод формы создания

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //создание
        $partner = Partner::create($request->all());
        return new PartnerResource($partner);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //вывод одной записи
        $partner = Partner::find($id);
        return new PartnerResource($partner);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //вывод формы редактирования
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
        //обновление записи
        $partner = Partner::find($id);
        $partner->update($request->all());
        return new PartnerResource($partner);
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //удаление записи
        $partner = Partner::find($id);
        $partner->delete();
        return response()->json(['message'=>'deleted']);
    }

    public function getAll(Request $request){
        return Partner::filter($request->all())->get();
    }
}
