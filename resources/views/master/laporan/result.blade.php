@php

use App\Models\Transaksi;

@endphp
@extends('base.main')
@section('page_icon') <i class="fa fa-dashboard"> </i>@endsection
@section('page_title') Halamana Result  @endsection
@section('page_subtitle') Halamana Result  @endsection
@section('menu')
    <div class="box box-solid" style="text-align:right;">
        <div class="box-body">
            
        </div>
    </div>
@endsection

@section('content')

    <div class="box box-solid">
         <div class="box-header with-border">
              <h4 class="box-title" ><center>Riwayat Transaksi</center></h4>

            </div>
        <div class="box-body">
            <table id="datatable" class="table table-hover table-condensed">
                <thead>
                    <tr>
                        
                        <th>Tanggal</th>
                        <th>Kode</th>
                        <th>Deskripsi</th>
                        <th>Kategori</th>
                       
                        <th>Dompet</th>
                         <th>Nilai</th>
                    </tr>
                </thead>
        @if($laporan->count() > 0)
                <tbody>
                    
                    @foreach($laporan as $row)
                    <tr>
                        <td>{{ $row->date }}</td>
                        <td>{{ $row->kode }}</td>
                        <td>{{ $row->deskripsi }}</td>
                        <td>{{ $row->kategori  }}</td>
                        <td>{{ $row->dompet }}</td>
                        @if($row->status_id == 1)
                        <td>+{{  $row->nilai }}</td>
                        @elseif($row->status_id == 2)
                          
                        <td>-{{  $row->nilai }}</td>
                        @else
                        <td>{{ $row->nilai }}</td>
                        @endif
                        
                    @endforeach
                        
                    </tr>
                    <tr>
                        <td colspan="5"></td>
                         <a class="btn btn-success" href="{{ route('export.laporan') }}" style="float:left;"><i class="fa fa-file-excel"></i>
                         Export Data to Excel</a>
                        <td colspan="1"> Total : {{$jumlah}}</td>
                    </tr>
                </tbody>
        @else
               <tr> 
                  <td colspan="6"> Data Tidak ada <span><a href="/laporan" class="btn btn-info">Kembali Halaman Laporan</a></span> </td>
                  
               </tr>
        @endif       
            </table>
        </div>
    </div>
 </div>
@endsection