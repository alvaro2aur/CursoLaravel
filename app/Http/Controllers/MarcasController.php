<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Marcas;
use App\Estatus;
use Validator;
use Redirect;

class MarcasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $marcas = Marcas::all();
        return view('Admin.Marcas.principal', compact('marcas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $estatus = Estatus::all();
        return view('Admin.Marcas.form', compact('estatus')); 
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data=$request->all();
        $rule=array(
            'nombre'=>'required|unique:marcas|max:100|min:1'
            );

        $validacion=Validator::make($data,$rule);
        if($validacion->fails()){
            return redirect()->back()->withErrors($validacion->errors())->withInput($data);
        }

        $marcas = new Marcas($data);
        $marcas -> save();
        return redirect() -> to(route('admin.marcas.index'));
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
        $edit = Marcas::findOrFail($id);
        return view('Admin.Marcas.form', compact('edit'));
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
        $data=$request->all();
        $rule=array(
            'nombre'=>'required|unique:marcas|max:100|min:1'
            );

        $validacion=Validator::make($data,$rule);
        if($validacion->fails()){
            return redirect()->back()->withErrors($validacion->errors())->withInput($data);
        }

        Marcas::find($id)->update($request->all());
        return redirect() -> to(route('admin.marcas.index'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $marcas=Marcas::find($id);
        $marcas->delete();
        return redirect() -> to(route('admin.marcas.index'));

    }
}
