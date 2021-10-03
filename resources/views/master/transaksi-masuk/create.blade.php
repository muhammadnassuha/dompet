@php
    $method = $model->exists ? 'PUT' : 'POST';
@endphp
{!! Form::model($model, [
    'route' => $model->exists ? ['transaksi-masuk.update', $model->id] : 'transaksi-masuk.store',
    'method'=> $method,

]) !!}
    
    <input type="hidden" name="id" id="id" value="{{ $model->id }}">
   
<div class="row">
        
        <div class="col-md-6">
            <div class="form-group">
                <label for="kode" class="control-label">kode</label>
                <input type="text" name="kode" value="{{ $code }}" class="form-control" readonly="readonly">
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
            <label for="date" class="control-label">Tanggal</label>
            <input type="text" name="date" value="{{ $date }}" class="form-control" readonly="readonly">
            
        </div>    
    </div>
    <div class="col-md-6">
            <div class="form-group">
                <label for="kategori_id" class="control-label">Kategori*</label>
                {!! Form::select('kategori_id',[''=>'- Select Status -']+ $kategori, null, ['class' => 'form-control','id' => 'kategori_id']) !!}
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label for="dompet_id" class="control-label">Dompet*</label>
                {!! Form::select('dompet_id',[''=>'- Select Status -']+ $dompet, null, ['class' => 'form-control','id' => 'dompet_id']) !!}
            </div>
        </div>
</div>
       
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label for="nilai" class="control-label">Nilai*</label>
                {!! Form::text('nilai', null, ['class'=>'form-control', 'id'=>'nilai']) !!}
            </div>
        </div>
    <div class="col-md-12">
        <div class="form-group">
                <label for="deskripsi" class="control-label">Deskripsi*</label>
                <textarea class="form-control" name="deskripsi"></textarea>
        </div>
    </div>
      
{!! Form::close() !!}

<script type="text/javascript">
    var nilai = document.getElementById("nilai");
    

    nilai.addEventListener("keyup", function(e) {
      nilai.value = formatRupiah(this.value, "");
    });

   


    function formatRupiah(angka, prefix) {
        var number_string = angka.replace(/[^\d]/g, "").toString(),
            split = number_string.split(","),
            sisa = split[0].length % 3,
            rupiah = split[0].substr(0, sisa),
            ribuan = split[0].substr(sisa).match(/\d{3}/gi);

        if (ribuan) {
            separator = sisa ? "," : "";
            rupiah += separator + ribuan.join(",");
        }

        rupiah = split[1] != undefined ? rupiah + "," + split[1] : rupiah;
        return prefix == undefined ? rupiah : rupiah ? "" + rupiah : "";
    }

    

   
</script>