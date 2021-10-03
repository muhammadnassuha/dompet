<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Kategori extends Model
{
    protected $table = 'Kategoris';

    public $timestamps = false;

    protected $primaryKey = 'id';

    protected $fillable = [
    	'nama',
    	'deskripsi',
    	'kategory_id'
    ]; 

    public function transaksi()
    {
    	return $this->hasOne('App\Transaksi','id');
    }
}
