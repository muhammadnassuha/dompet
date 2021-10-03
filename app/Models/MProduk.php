<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MProduk extends Model
{
    protected $table = 'm_produks';
    protected $fillable = [
    	'nama_barang',
    	'foto_barang',
    	'harga_beli',
    	'harga_jual',
    	'stok'
    ];
}
