<?php

namespace App\Http\Controllers;

use App\Models\Kategori;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;
use DataTables;
use DB;
use App\Utility;
use App\Models\KategoriStatus;
class KategoriController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('master.kategori.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $model = new Kategori;
        $kategori_status = KategoriStatus::pluck('nama','id')->all();
        return  view('master.kategori.create',compact('model','kategori_status'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'nama' => 'required|min:5',
            'deskripsi' => 'required|',
            'kategory_id' => 'required',
        ]);
        $model = [];
        if($model){
            $data = [
                'nama' => $request->nama,
                'deskripsi' => $request->deskripsi,
                'kategory_id' => $request->kategory_id
            ];
        }else{
             $data = [
                'nama' => $request->nama,
                'deskripsi' => $request->deskripsi,
                'kategory_id' => $request->kategory_id
            ];
        }
        $model = Kategori::create($data);
        return redirect()->route('kategori.index')->with('success', 'success');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Kategori  $kategori
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
         $model = DB::table('kategoris as a')
                    ->join('kategori_statuses as b','b.id','=','a.kategory_id')
                    ->where('a.id',base64_decode($id))
                    ->select('a.*','b.nama as kategori')
                    ->first();
        return view('master.kategori.show',compact('model'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Kategori  $kategori
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $id = base64_decode($id);
        $model = Kategori::findOrFail($id);
        $kategori_status = KategoriStatus::pluck('nama','id')->all();
            
        return view('master.kategori.create',compact('model','kategori_status')); 
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Kategori  $kategori
     * @return \Illuminate\Http\Response
     */

     public function updateStatus($id)
    {
        $model = Kategori::findOrFail($id);
        if($model->kategory_id == "1"){
        $res = DB::connection('mysql')
                ->select("UPDATE kategoris set kategory_id = '2' WHERE id = '$id' ");
         }elseif($model->kategory_id == "2"){
           $res = DB::connection('mysql')
                ->select("UPDATE kategoris set kategory_id = '1' WHERE id = '$id' ");
         }       
    }

    public function update(Request $request, $id)
    {
        $this->validate($request,[
            'nama' => 'required|min:5',
            'deskripsi' => 'required|',
            'kategory_id' => 'required',
        ]);
      
        $model = Kategori::findOrFail($id);
       
            $data = [
                'nama' => $request->nama,
                'deskripsi' => $request->deskripsi,
                'kategory_id' => $request->kategory_id
            ];
        
        $model->update($data);
        dd($model);
        return redirect()->route('kategori.index')->with('success', 'success');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Kategori  $kategori
     * @return \Illuminate\Http\Response
     */
    public function destroy(Kategori $kategori)
    {
        //
    }

     public function dataTable()
    {
        $model = DB::table('kategoris as a')
                    ->join('kategori_statuses as b','b.id','=','a.kategory_id')
                    ->select('a.*','b.nama as kategori')
                    ->get();
        
        return DataTables::of($model)
            ->addColumn('action', function($model){
                return view('master.kategori.action', [
                    'model' => $model,
                    'url_show'=> route('kategori.show', base64_encode($model->id)),
                    'url_edit'=> route('kategori.edit', base64_encode($model->id)),
                    
                ]);
            })

            ->addColumn('kategory_id', function($model){

                if($model->kategory_id == "1"){
                    $msg = "<center>
                <button type='button' btn-data='/kategori/kategori-update/$model->id' class=' btn-haha btn-block btn btn-xs btn-warning btn-sm'>
                    Tidak Aktif
                    </button>

                <center>";
                }else if($model->kategory_id == "2"){
                    $msg = "<center>
                        <button type='button' btn-data='/kategori/kategori-update/$model->id' class='btn-block btn-haha btn btn-xs btn-primary btn-sm'>Aktif</button><center>";
                }else{
                    $msg = "<center><button type='button' btn-data='/model/kategori-update/$model->id' class='btn-block btn-haha btn btn-xs btn-success btn-sm'>Success</button><center>";
                }
             return $msg;
            })
            
            
            ->addIndexColumn()
            ->rawColumns(['action','kategory_id'])
            ->make(true);
    }

     public function reloadWidget()
    {
        $aktife = DB::connection('mysql')
                ->select("SELECT count(kategory_id) as total FROM kategoris WHERE kategory_id = '1' ");
        foreach ($aktife as $key) {
            $aktif = $key->total;
        }
       


        $inactive = DB::connection('mysql')
                ->select("SELECT count(kategory_id) as total FROM kategoris WHERE kategory_id = '2' ");
        foreach ($inactive as $key) {
            $tidak_active = $key->total;
        }

       
        
        return response()->json([
            'aktif' => $aktif,
            'tidak_active' => $tidak_active,
            
        ]);


    }
}
