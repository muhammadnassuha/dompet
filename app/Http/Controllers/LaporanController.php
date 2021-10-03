<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Transaksi;
use App\Models\Dompet;
use App\Models\Kategori;
use App\Utiliy;
use DB;
use App\Exports\LaporanTransaksi;
use Maatwebsite\Excel\Facades\Excel;

class LaporanController extends Controller
{
	
	public function index()
	{
		$dompet = Dompet::where('status_id','1')
                    ->orderBy('id','ASC')
                    ->pluck('nama', 'id')
                    ->all();

        $kategori = Kategori::where('kategory_id','1')
                    ->orderBy('id','ASC')
                    ->pluck('nama', 'id')
                    ->all();
		return view('master.laporan.index',compact('dompet','kategori'));
	}

	public function search(Request $request)
	{


		$start = $request->start;
		$end = $request->end;
		$uang_masuk = $request->masuk;
		$uang_keluar = $request->keluar;
		$kategori = $request->kategori_id;
		$dompet = $request->dompet_id;

		$laporan = DB::table('transaksis as a')
					  ->leftjoin('dompets as b','b.id','a.dompet_id')
					  ->leftjoin('kategoris as c','c.id','a.kategori_id')
					  ->whereBetween('a.date',[$start,$end])
					  ->where('b.id','=',$dompet)
					  ->Orwhere('c.id','=',$kategori)
					  ->Orwhere('a.status_id','=',$uang_masuk)
					  ->Orwhere('a.status_id','=',$uang_keluar)
					  ->select('a.date','a.kode','a.deskripsi','a.nilai','a.status_id','b.nama as dompet','c.nama as kategori')
					->get();
		
		$test = 0;
		$masuk = 0;
		$keluar = 0;
		$jumlah = 0;
		$data_masuk = Transaksi::where('status_id','=','1')->get();
		if($data_masuk){
			foreach ($data_masuk as $key) {
				$masuk += $key->nilai; 
			}
		}
		$data_masuk = Transaksi::where('status_id','=','2')->get();
		if($data_masuk){
			foreach ($data_masuk as $key) {
				$keluar = $key->nilai; 
			}
		}
		$jumlah = $masuk - $keluar;
		// foreach ($laporan as $key ){
		// 	if($key->status_id == 1){
		// 		$masuk += $key->nilai;
		// 		if ($key->status_id == 2) {
		// 			$keluar = $key->nilai;
		// 		}
		// 	}
		// }
		return view('master.laporan.result',compact('laporan','jumlah'));			  
	}

	 function export()
    {
        return Excel::download(new LaporanTransaksi, 'laporan.xlsx');
    }	

}
