<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\URL;
use App\Utility;
use Illuminate\Support\Facades\Auth;
use DB;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function checkAccess($modul, $action)
    {
    	$role = Auth::user()->role_id;
    	// get id module
    	$module = DB::table('sec_module')
    			->where('module', $modul)
                ->where('is_deleted', '0')
                ->where('active', '1')
    			->select('id')
    			->first();
    	// check access
    	$check = DB::table('sec_accessrole')
    			->where('role_id', $role)
    			->where('module_id', $module->id)
    			->where('action', $action)
    			->count();
    	$result = false;
    	if($check > 0)
    		$result = true;

    	return $result;
    }
}
