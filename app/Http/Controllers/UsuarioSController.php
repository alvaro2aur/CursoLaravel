<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Usuarios;
use Validator;

class UsuarioSController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //$usuarios=Usuarios::with('TipoEstatus', 'TipoUsuario',.....)->get(); ------ Forma mas eficiente de consultar

        $usuarios = Usuarios::all();
        return view('Admin.Usuarios.principal', compact('usuarios'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Admin.Usuarios.form'); 
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
            'nombre'=>'required|max:100|min:1',
            'apellido'=>'required|max:100|min:1',
            'telefono'=>'required|unique:telefono|max:100|min:1',
            'correo'=>'required|unique:correo|max:100|min:1',
            'password'=>'required|max:100|min:1',
            'descripcion'=>'required|max:100|min:1'
            );

        $validacion=Validator::make($data,$rule);
        if($validacion->fails()){
            return redirect()->back()->withErrors($validacion->errors())->withInput($data);
        }

        $usuarios = new Usuarios($data);
        $usuarios -> save();
        return redirect() -> to(route('admin.usuarios.index'));
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
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
