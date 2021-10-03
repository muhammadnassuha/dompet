<?php

use Illuminate\Support\Facades\Route;
// All Routes

Route::get('/',function (){
	return view('master.dashboard.index');
});

Route::resource('dompet','DompetController');
Route::get('table/dompet','DompetController@dataTable')->name('table.dompet');
Route::get('/dompet/status-update/{id}', 'DompetController@updateStatus')->name('dompet.updateStatus');
Route::post('/dompet/widget-data', 'DompetController@reloadWidget')->name('dompet.widget');

Route::resource('kategori','KategoriController');
Route::get('table/kategori','KategoriController@dataTable')->name('table.kategori');
Route::get('/kategori/kategori-update/{id}', 'KategoriController@updateStatus')->name('kategori.updateStatus');
Route::post('/kategori/widget-data', 'KategoriController@reloadWidget')->name('kategori.widget');

Route::get('/transaksi-masuk','TransaksiController@index')->name('transaksi-masuk.index');
Route::get('/transaksi-masuk/create','TransaksiController@createMasuk')->name('transaksi-masuk.create');
Route::post('/transaksi-masuk/store','TransaksiController@storeMasuk')->name('transaksi-masuk.store');
Route::get('/table/transaksi-masuk','TransaksiController@dataTable_Masuk')->name('table.transaksi-masuk');

Route::get('/transaksi-keluar','TransaksiController@yandex')->name('transaksi-keluar.index');
Route::get('/transaksi-keluar/create','TransaksiController@createKeluar')->name('transaksi-keluar.create');
Route::get('/table/transaksi-keluar','MProdukController@dataTable')->name('table.transaksi_keluar');
Route::post('/transaksi-masuk/keluar','TransaksiController@storeKeluar')->name('transaksi-keluar.store');

Route::get('/laporan','LaporanController@index')->name('laporan.index');
Route::get('/laporan/search','LaporanController@search')->name('laporan.search');
Route::get('/export/laporan','LaporanController@export')->name('export.laporan');


