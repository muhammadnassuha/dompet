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

    <div class="box box-solid">
        
        <div class="box-body">
            <table id="datatable" class="table table-hover table-condensed">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Tanggal</th>
                        <th>Kode</th>
                        <th>Deskripsi</th>
                        <th>Kategori</th>
                        <th>Nilai</th>
                        <th>Dompet</th>
                    </tr>
                </thead>
            </table>
        </div>
    </div>
 </div>
@endsection

@push('scripts')
    <script>
        var x = document.getElementById("myAudio");

         $('#datatable').DataTable({
            responsive : true,
            processing : true,
            serverSide : true,
            ajax: "/table/transaksi-masuk",
            columns: [
                {data : 'DT_RowIndex', name : 'id'},
                {data : 'date', name : 'date'},
                {data : 'kode', name : 'kode'},
                {data : 'deskripsi', name : 'deskripsi'},
                {data : 'nilai', name: 'nilai'},
                {data : 'nama_kategori', name : 'nama_kategori'},
                {data : 'nama_dompet', name: 'nama_dompet'}
            ]
        });
    </script>
@endpush    


