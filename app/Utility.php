<?php
namespace App;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use URL;

class Utility
{
	public function getUser($id)
    {
    	$fullname = '';
    	$model = DB::table('users')
                        ->where('id','=',$id)
                        ->first();
    	if($model)
    		$fullname = $model->name;

    	return $fullname;
    }

    public function localDate($date)
    {
        return date('d M Y H:i', strtotime($date)).' WIB';
    }

    public function isAllowedToUpdate($childTables = array(), $fk_ids = array(), $pk_id)
    {
        // looping pengecekan data di child table
        $no = 0;
        $total = 0;
        foreach($childTables as $table)
        {
            $count = DB::table($table)
                    ->where($fk_ids[$no], $pk_id)
                    ->where('is_deleted', '0')
                    ->count();
            $total = $total + $count;

        }

        return $total > 0 ? false : true;
    }

}
?>