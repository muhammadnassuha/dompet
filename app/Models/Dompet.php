<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Dompet extends Model
{
    protected $table = 'dompets';

    public $timestamps = false;

    protected $primaryKey = 'id';

    protected $fillable = [
    	'nama',
    	'referensi',
    	'deskripsi',
    	'status_id'
    ]; 

    public function transaksi()
    {
    	return $this->hasOne('App\Transaksi','id');
    }
}
