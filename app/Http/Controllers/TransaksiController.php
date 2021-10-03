<?php

namespace App\Http\Controllers;

use App\Models\Transaksi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;
use DataTables;
use DB;
use App\Utility;
use App\Models\TransaksiStatus;
use App\Models\Kategori;
use App\Models\Dompet;
use Carbon\Carbon;

class TransaksiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('master.transaksi-masuk.index');
    }

    public function yandex()
    {
        return view('master.transaksi-keluar.index');
    }

    
    public function createMasuk()
    {
        $model = new Transaksi();

 
                                        
        $num = Transaksi::orderBy('kode','desc')->count();
        $dataCode = Transaksi::orderBy('kode','desc')->first();
        if ($num ==0) { 
            $code = 'TSM001';
        }
        else{
            $c = $dataCode->kode;
            $code = substr($c, 3)+1;
            $code = "TSM00".$code;
        }          

        $date = Carbon::now()->format('y-m-d');  

        $dompet = Dompet::where('status_id','1')
                    ->orderBy('id','ASC')
                    ->pluck('nama', 'id')
                    ->all();

        $kategori = Kategori::where('kategory_id','1')
                    ->orderBy('id','ASC')
                    ->pluck('nama', 'id')
                    ->all();

        return view('master.transaksi-masuk.create',compact('model','dompet','kategori','code','date'));
    }

    public function storeMasuk(Request $request)
    {
        $this->validate($request,[
            'nilai'       => 'required',
            'deskripsi'   => 'required|max:100',
            'kategori_id' => 'required',
            'dompet_id'   => 'required'
        ]);

        $nilai = str_replace(",","",$request->nilai);

        $model = [];
            $data = [
                'kode'       => $request->kode,
                'date'       => $request->date,
                'kategori_id'=> $request->kategori_id,
                'status_id'  => '1',
                'dompet_id'  => $request->dompet_id,
                'nilai'      => $nilai,
                'deskripsi'  => $request->deskripsi,
            ];
        
        
        $model = Transaksi::create($data);
        return redirect()->route('transaksi-masuk.index')->with('success','success');
    }

    public function storeKeluar(Request $request)
    {
        $this->validate($request,[
            'nilai'       => 'required',
            'deskripsi'   => 'required|max:100',
            'kategori_id' => 'required',
            'dompet_id'   => 'required'
        ]);

        $nilai = str_replace(",","",$request->nilai);

        $model = [];
            $data = [
                'kode'       => $request->kode,
                'date'       => $request->date,
                'kategori_id'=> $request->kategori_id,
                'status_id'  => '2',
                'dompet_id'  => $request->dompet_id,
                'nilai'      => $nilai,
                'deskripsi'  => $request->deskripsi,
            ];
        
        
        $model = Transaksi::create($data);
        return redirect()->route('transaksi-masuk.index')->with('success','success');
    }

    public function createKeluar()
    {
        $model = new Transaksi();
                                        
        $num = Transaksi::orderBy('kode','desc')->count();
        $dataCode = Transaksi::orderBy('kode','desc')->first();
        if ($num ==0) { 
            $code = 'TSK001';
        }
        else{
            $c = $dataCode->kode;
            $code = substr($c, 3)+1;
            $code = "TSM00".$code;
        }          

        $date = Carbon::now()->format('y-m-d');  

        $dompet = Dompet::where('status_id','1')
                    ->orderBy('id','ASC')
                    ->pluck('nama', 'id')
                    ->all();

        $kategori = Kategori::where('kategory_id','1')
                    ->orderBy('id','ASC')
                    ->pluck('nama', 'id')
                    ->all();

        return view('master.transaksi-keluar.create',compact('model','dompet','kategori','code','date'));
    }

    public function dataTable_Masuk()
    {
         $model = DB::table('transaksis as a')
                    ->leftJoin('dompets as b','b.id','=','a.dompet_id')
                    ->leftJoin('kategoris as c','c.id','=','a.kategori_id')
                    ->select('a.*','b.nama as nama_dompet','c.nama as nama_kategori')
                    ->where('a.status_id','=','1')
                    ->get();

        return DataTables::of($model)
            
            ->editColumn('nilai', function($model){
                return "+".number_format($model->nilai);
            })

             ->editColumn('date', function($model){
                return date('d-m-Y', strtotime($model->date));
            })
            ->addIndexColumn()
            ->rawColumns(['nilai'])
            ->make(true);
    }

      
}
