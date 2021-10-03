@php
    $method = $model->exists ? 'PUT' : 'POST';
@endphp
{!! Form::model($model, [
    'route' => $model->exists ? ['kategori.update', $model->id] : 'kategori.store',
    'method'=> $method,

]) !!}
    
    <input type="hidden" name="id" id="id" value="{{ $model->id }}">
   
    <div class="row">
       
        <div class="col-md-6">
            <div class="form-group">
                <label for="nama" class="control-label">Nama*</label>
                {!! Form::text('nama', null, ['class'=>'form-control', 'id'=>'nama','autocomplete' => 'off']) !!}
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label for="kategory_id" class="control-label">Status*</label>
                {!! Form::select('kategory_id',[''=>'- Select Status -']+ $kategori_status, null, ['class' => 'form-control','id' => 'kategory_id']) !!}
            </div>
        </div>
    </div>
    
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label for="Deskripsi" class="control-label">Deskripsi*</label>
                {!! Form::textarea('deskripsi', null, ['class'=>'form-control', 'id'=>'deskripsi']) !!}
            </div>
        </div>
    </div>

{!! Form::close() !!}

<script type="text/javascript">
   
    
</script>
