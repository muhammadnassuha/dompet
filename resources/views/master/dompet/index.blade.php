@extends('base.main')
@section('page_icon') <i class="fa fa-dashboard"> </i>@endsection
@section('page_title') Dompet @endsection
@section('page_subtitle')  @endsection
@section('menu')
    <div class="box box-solid" style="text-align:right;">
        <div class="box-body">
            <a href="{{ route('dompet.create') }}" class="modal-show btn btn-success" title="Buat Dompet Baru">
                <i class="fa fa-plus"></i> Create
            </a>
        </div>
    </div>
@endsection

@section('content')
<div class="row">

        <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-aqua"><i class="ion ion-ios-gear-outline"></i>
                </span>
            <div class="info-box-content">
                <span class="info-box-text" style="text-align: center;">Aktif</span>
                <span class="info-box-number" id="widget-aktif" style="text-align: center;">

                     
                </span>
            </div>
          </div>
        </div>

        <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-aqua"><i class="ion ion-ios-gear-outline"></i>
                </span>
            <div class="info-box-content">
                <span class="info-box-text" style="text-align: center;">Tidak Aktif</span>
                <span class="info-box-number" id="widget_tidak_active" style="text-align: center;">
                    
                </span>
            </div>
          </div>
        </div>

        
        <!-- /.col -->
        
        <!-- /.col -->
      </div>
    <div class="box box-solid">
        <div class="box-body">
            <span>Filter Data</span>
            <select id="mySelect" onchange="myFunction()" >
                <option value="all">All</option>
                <option value="aktif">Aktif</option>
                <option value="Tidak Active">Tidak Aktif</option>
            </select>
        
        <div class="box-body">
            <table id="datatable" class="table table-hover table-condensed">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama</th>
                        <th>Referensi</th>
                        <th>Deskripsi</th>
                        <th>Status</th>
                        <th>Action</th>
                        <th></th>
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

        var DataTablesGreet = $('#datatable').DataTable({
            responsive : true,
            processing : true,
            serverSide : true,
            ajax: "{{ route('table.dompet') }}",
            columns: [
                {data : 'DT_RowIndex', name : 'id'},
                {data : 'nama', name : 'nama'},
                {data : 'referensi', name : 'referensi'},
                {data : 'deskripsi', name : 'deskripsi'},
                {data : 'status', name : 'status'},
                {data : 'action', name : 'action'},
                {data : 'status_id', name: 'status_id'},
            ]
        });
    </script>
    <script >
        $.ajaxSetup({

            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $(document).ready(function(){
            reloadWidget();
        });

    function reloadWidget() {
        var widget_aktif = document.getElementById('widget-aktif');
        var widget_tidak_active = document.getElementById('widget_tidak_active');
        

        $.ajax({
            url : '{{ route('dompet.widget') }}',
            method : 'post',
            success : function(r) {
                widget_aktif.innerHTML = r.aktif;
                widget_tidak_active.innerHTML = r.tidak_active;
            },
            error : function(e) {
                console.log(e);
            }
        });
    }
        
       function myFunction() {
        var x = document.getElementById("mySelect").value;
        if(x == "all") {
            DataTablesGreet.columns(4).search('').draw();
        } else if(x == "aktif") {
            DataTablesGreet.columns(4).search('Aktif').draw();
        } else {
            DataTablesGreet.columns(4).search('Tidak Active').draw();
        }
       }
    
    </script>
@endpush

