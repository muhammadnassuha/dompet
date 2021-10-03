@extends('base.main')
@section('page_icon') <i class="fa fa-dashboard"> </i>@endsection
@section('page_title') Transaksi Masuk @endsection
@section('page_subtitle')  @endsection
@section('menu')
<div class="box box-solid" style="text-align:right;">
    <div class="box-body">
        <a href="{{ route('transaksi-masuk.create') }}" class="modal-show btn btn-success" title="Buat Transaksi Masuk">
            <i class="fa fa-plus"></i> Create
        </a>
    </div>
</div>
@endsection

@section('content')

<div class="box box-danger">
    <div class="box-header with-border">
      <h3 class="box-title">Laporan Transaksi</h3>
  </div>

  <div class="box-body">
    <form action=" {{ route('laporan.search') }}" method="GET" >
      <div class="row">
        <div class="col-xs-3">
            <label class="control-label"> Tanggal Awal: </label>
            <input type="date" class="form-control" name="start" >
        </div>
        <div class="col-xs-3">
            <label class="control-label"> Tanggal Akhir: </label>
            <input type="date" class="form-control" name="end">
        </div>
        <div class="col-xs-3">
            <label class="control-label"> Status: </label>
            <div class="checkbox">
                <label>
                    <input type="checkbox" name="masuk" value="1">Tampilkan Uang Masuk
                </label>
            </div>
            <div class="control-label">
                <div class="checkbox">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="checkbox" name="keluar" value="2" >Tampilkan Uang Keluar
                </div>
            </div>
        </div>

    </div>
    <div class="row">
        <div class="col-xs-3">
            <label class="control-label"> Kategori: </label>
            {!! Form::select('kategori_id',[''=>'- Select Status -']+ $kategori, null, ['class' => 'form-control','id' => 'kategori_id']) !!}
        </div>
        <div class="col-xs-3">
            <label class="control-label"> Dompet: </label>
            {!! Form::select('dompet_id',[''=>'- Select Status -']+ $dompet, null, ['class' => 'form-control','id' => 'dompet_id']) !!}
        </div>
    </div>

    <br>
    <input type="submit" name="search" value="Buat Laporan" class="btn btn-info">
</div>
</div>
<!-- /.box-body -->
</form>


</div>
@endsection

@push('scripts')

@endpush    


