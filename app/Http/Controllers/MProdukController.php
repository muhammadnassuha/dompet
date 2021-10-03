<?php

namespace App\Http\Controllers;

use App\Models\MProduk;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;
use DataTables;
use DB;
use App\Utility;

class MProdukController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('master.produk.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $model = new MProduk();
        if ($model->harga_beli == 0) {
            $harga_beli = "";
        }

        if ($model->harga_jual == 0) {
            $harga_jual = "";
        }
        return view('master.produk.create', compact(['model','harga_beli','harga_jual']));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'nama_barang'   => 'required|string|unique:m_produks,nama_barang',
            'harga_beli'    => 'required|string',
            'harga_jual'    => 'required|string',
            'stok'          => 'required|string'
        ]);

        $harga_beli = str_replace(",","",$request->harga_beli);

        $harga_jual = str_replace(",","",$request->harga_jual);

        if($request->foto_barang == ""){
            $data = [
                'nama_barang'   => $request->nama_barang,
                'harga_beli'    => $harga_beli,
                'harga_jual'    => $harga_jual,
                'stok'          => $request->stok,
                'created_by'    => Auth::user()->id,
                'updated_by'    => Auth::user()->id
            ];
        }else{
            $data = [
                'nama_barang'   => $request->nama_barang,
                'foto_barang'   => $request->foto_barang,
                'harga_beli'    => $harga_beli,
                'harga_jual'    => $harga_jual,
                'stok'          => $request->stok,
                'created_by'    => Auth::user()->id,
                'updated_by'    => Auth::user()->id
            ];
        }

        if($harga_beli > $harga_jual){
            abort(300,'Something error');
        }else{
            $model = MProduk::create($data);
            return $model;
        }


       
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\MProduk  $mProduk
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $model = MProduk::findOrFail(base64_decode($id));
        $uti = new Utility();
        return view('master.produk.detail', compact(['model','uti']));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\MProduk  $mProduk
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $model = MProduk::findOrFail(base64_decode($id));
            $harga_beli = number_format($model->harga_beli);
            $harga_jual = number_format($model->harga_jual);

      
        return view('master.produk.create', compact(['model','harga_beli','harga_jual']));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\MProduk  $mProduk
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'nama_barang'   => 'required|string|unique:m_produks,nama_barang,'.$id.',id',
            'harga_beli'    => 'required|string',
            'harga_jual'    => 'required|string',
            'stok'          => 'required|string'
            
        ]);

        $harga_beli = str_replace(",","",$request->harga_beli);

        $harga_jual = str_replace(",","",$request->harga_jual);

        if($request->foto_barang == ""){
            $data = [
                'nama_barang'   => $request->nama_barang,
                'harga_beli'    => $harga_beli,
                'harga_jual'    => $harga_jual,
                'stok'          => $request->stok,
                'created_by'    => Auth::user()->id,
                'updated_by'    => Auth::user()->id
            ];
        }else{
            $data = [
                'nama_barang'   => $request->nama_barang,
                'foto_barang'   => $request->foto_barang,
                'harga_beli'    => $harga_beli,
                'harga_jual'    => $harga_jual,
                'stok'          => $request->stok,
                'updated_by'    => Auth::user()->id
            ];
        }

        // dd($data);

        if($harga_beli > $harga_jual){
            abort(300,'Something error');
        }else{
            $model = MProduk::findOrFail($id);
            $model->update($data);
        }

        
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\MProduk  $mProduk
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $res=MProduk::where('id',base64_decode($id))->delete();
    }

    public function dataTable()
    {
      $model = DB::table('transaksis as a')
                ->leftJoin('dompets as b','b.id','=','a.dompet_id')
                ->leftJoin('kategoris as c','c.id','=','a.kategori_id')
                ->select('a.*','b.nama as nama_dompet','c.nama as nama_kategori')
                ->where('a.status_id','=','2')
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

    public function imageUpload(Request $request)
    {
        $file = $request->img;
        $filename = "img_".date('Ymd_His')."_".$file->getClientOriginalName();
        $move_path = 'images/produk/';

        $file->move($move_path,$filename);
        return $move_path.$filename;
    }

    public function showImage(Request $request)
    {
        $result = DB::table('m_produks as a')
                    ->where('a.id', $request->id)
                    ->get();

        $imgs = [];
        if($result != null){
            foreach ($result as $key) {
                $img['nama'] = substr($key->foto_barang, 25);
                $img['size'] = filesize(public_path() ."/". $key->foto_barang);
                $img['url'] = $key->foto_barang;
                $imgs[] = $img;
            }
        }


        return response()->json(['imgs' => $imgs]);
    }
}