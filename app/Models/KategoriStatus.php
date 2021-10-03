<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class KategoriStatus extends Model
{
    protected $table = 'kategori_statuses';

    protected $primaryKey = 'id';

    protected $fillable = [
    		'nama'
    ];

    public $timestamps = false;
}
