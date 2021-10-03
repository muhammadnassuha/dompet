<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Dompet_Status extends Model
{
    protected $table = 'dompet_statuses';

    protected $fillable = ['nama'];

    protected $primaryKey = 'id';

    public $timestamps = false;
}
