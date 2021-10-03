<?php

namespace App\Http\Controllers;

use App\Models\Dompet;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;
use DataTables;
use DB;
use App\Utility;
use App\Models\Dompet_Status;
class DompetController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('master.dompet.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $model = new Dompet();
        $dompet_status = Dompet_Status::pluck('nama','id')->all();
        
        return view('master.dompet.create', compact('model','dompet_status'));
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
            'status_id' => 'required',
        ]);
        $model = [];
        if($model){
            $data = [
                'nama' => $request->nama,
                'referensi' => $request->referensi,
                'deskripsi' => $request->deskripsi,
                'status_id' => $request->status_id
            ];
        }else{
             $data = [
                'nama' => $request->nama,
                'referensi' => $request->referensi,
                'deskripsi' => $request->deskripsi,
                'status_id' => $request->status_id
            ];
        }
        $model = Dompet::create($data);
        return redirect()->route('dompet.index')->with('success', 'success');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Dompet  $dompet
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        
        $model = DB::table('dompets as a')
                    ->join('dompet_statuses as b','b.id','=','a.status_id')
                    ->where('a.id',base64_decode($id))
                    ->select('a.*','b.nama as status')
                    ->first();
        return view('master.dompet.show',compact('model'));            
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Dompet  $dompet
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $id = base64_decode($id);
        $model = Dompet::findOrFail($id);
        $dompet_status = Dompet_Status::pluck('nama','id')->all();
            
        return view('master.dompet.create',compact('model','dompet_status')); 
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Dompet  $dompet
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request,[
            'nama' => 'required|min:5',
            'deskripsi' => 'required|',
            'status_id' => 'required',
        ]);
      
        $model = Dompet::findOrFail($id);
       
            $data = [
                'nama' => $request->nama,
                'referensi' => $request->referensi,
                'deskripsi' => $request->deskripsi,
                'status_id' => $request->status_id
            ];
        
        $model->update($data);
        dd($model);
        return redirect()->route('dompet.index')->with('success', 'success');
    }

    public function updateStatus($id)
    {
        $model = Dompet::findOrFail($id);
        if($model->status_id == "1"){
        $res = DB::connection('mysql')
                ->select("UPDATE dompets set status_id = '2' WHERE id = '$id' ");
         }elseif($model->status_id == "2"){
           $res = DB::connection('mysql')
                ->select("UPDATE dompets set status_id = '1' WHERE id = '$id' ");
         }       
    }

 

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Dompet  $dompet
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        
    }


    public function dataTable()
    {
        $model = DB::table('dompets as a')
                    ->join('dompet_statuses as b','b.id','=','a.status_id')
                    ->select('a.*','b.nama as status')
                    ->get();
        
        return DataTables::of($model)
            ->addColumn('action', function($model){
                return view('master.dompet.action', [
                    'model' => $model,
                    'url_show'=> route('dompet.show', base64_encode($model->id)),
                    'url_edit'=> route('dompet.edit', base64_encode($model->id)),
                    
                ]);
            })

            ->addColumn('status_id', function($model){

                if($model->status_id == "1"){
                    $msg = "<center>
                <button type='button' btn-data='/dompet/status-update/$model->id' class=' btn-haha btn-block btn btn-xs btn-warning btn-sm'>
                    Tidak Aktif
                    </button>

                <center>";
                }else if($model->status_id == "2"){
                    $msg = "<center>
                        <button type='button' btn-data='/dompet/status-update/$model->id' class='btn-block btn-haha btn btn-xs btn-primary btn-sm'>Aktif</button><center>";
                }else{
                    $msg = "<center><button type='button' btn-data='/model/status-update/$model->id' class='btn-block btn-haha btn btn-xs btn-success btn-sm'>Success</button><center>";
                }
             return $msg;
            })
            
            
            ->addIndexColumn()
            ->rawColumns(['action','status_id'])
            ->make(true);
    }

     public function reloadWidget()
    {
        $process = DB::connection('mysql')
                ->select("SELECT count(status_id) as total FROM dompets WHERE status_id = '1' ");
        foreach ($process as $key) {
            $aktif = $key->total;
        }
       


        $process = DB::connection('mysql')
                ->select("SELECT count(status_id) as total FROM dompets WHERE status_id = '2' ");
        foreach ($process as $key) {
            $tidak_active = $key->total;
        }

       
        
        return response()->json([
            'aktif' => $aktif,
            'tidak_active' => $tidak_active,
            
        ]);


    }

     

}
