<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TransaksiStatus extends Model
{
    protected $table = 'transaksi_statuses';

    protected $primaryKey = 'id';

    protected $fillable = [
    		'nama'
    ];

    public $timestamps = false;
}
