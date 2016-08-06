<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Estatus;
use Validator;
use Redirect;

class EstatusController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $estatus = Estatus::all();
        return view('Admin.Estatus.principal', compact('estatus'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Admin.Estatus.form'); 
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
            'nombre'=>'required|unique:estatus|max:100|min:1'
            );

        $validacion=Validator::make($data,$rule);
        if($validacion->fails()){
            return redirect()->back()->withErrors($validacion->errors())->withInput($data);
        }

        $estatus = new Estatus($data);
        $estatus -> save();
        return redirect() -> to(route('admin.estatus.index'));



    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $estatu = Estatus::findOrFail($id);
        return view('productos', compact('estatu'));
        //echo "vista del estatus $id";

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $edit = Estatus::findOrFail($id);
        return view('Admin.Estatus.form', compact('edit'));
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
            'nombre'=>'required|unique:estatus|max:100|min:1'
            );

        $validacion=Validator::make($data,$rule);
        if($validacion->fails()){
            return redirect()->back()->withErrors($validacion->errors())->withInput($data);
        }

        Estatus::find($id)->update($request->all());
        return redirect() -> to(route('admin.estatus.index'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $estatus=Estatus::find($id);
        $estatus->delete();
        return redirect() -> to(route('admin.estatus.index'));

    }

    public function buscar($id)
    {
        $keywords=input('keywords'),
        $estatus=Estatus::all();
        $BuscarEstatus = new \Illuminate\Database\Eloquent\Collection();
        foreach ($estatus as $estatu) {
            if (Str::contains(Str::lower($estatu->nombre),Str(lower($keywords)))) {
                $BuscarEstatus.add($producto);
            }
        }
        return view('Admin.Estatus.principal2')->with('BuscarEstatus', $BuscarEstatus);
    }
}
