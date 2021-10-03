

@php
    $method = $model->exists ? 'PUT' : 'POST';
@endphp
{!! Form::model($model, [
    'route' => $model->exists ? ['dompet.update', $model->id] : 'dompet.store',
    'method'=> $method,

]) !!}
    
    <input type="hidden" name="id" id="id" value="{{ $model->id }}">
   
    <div class="row">
       
        <div class="col-md-12">
            <div class="form-group">
                <label for="nama" class="control-label">Nama*</label>
                {!! Form::text('nama', null, ['class'=>'form-control', 'id'=>'nama']) !!}
            </div>
        </div>
    </div>
    
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="referensi" class="control-label">Referensi*</label>
                {!! Form::number('referensi',null, ['class'=>'form-control', 'id'=>'referensi','autocomplete' => 'off']) !!}
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label for="status_id" class="control-label">Status*</label>
                {!! Form::select('status_id',[''=>'- Select Status -']+ $dompet_status, null, ['class' => 'form-control','id' => 'status_id']) !!}
            </div>
        </div>
        
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label for="Deskripsi" class="control-label">Deskripsi*</label>
                {!! Form::textarea('deskripsi', null, ['class'=>'form-control', 'id'=>'deskripsi','onkeypress' => 'return deskripsi(deskripsi)']) !!}
            </div>
        </div>
    </div>

{!! Form::close() !!}

<script type="text/javascript">
   


    
</script>
