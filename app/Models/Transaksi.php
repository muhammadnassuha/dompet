<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Transaksi extends Model
{
    protected $table = 'transaksis';

    protected $primaryKey = 'id';

    protected $fillable = [
    				'kode',
		    		'deskripsi',
		    		'date',
		    		'nilai',
		    		'dompet_id',
		    		'kategori_id',
		    		'status_id'];

    public $timestamps = false;
   
   	

   	public function kategori()
   	{
   		return $this->belongsTo('App\Dompet','id','dompet_id');
   	}
}
