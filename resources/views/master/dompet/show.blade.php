
<div class="row">
	<div class="col-md-12">
		<table class="table table-bordered">
			<tbody>
				
				<tr>
					<th>Nama</th>
					<td>{{ $model->nama }}</td>
				</tr>
				<tr>
					<th>Referensi</th>
					<td> {{ ($model->referensi) }}</td>
				</tr>
				<tr>
					<th>Deskripsi</th>
					<td> {{ ($model->deskripsi) }}</td>
				</tr>
				<tr>
					<th>Status</th>
					<td>{{ $model->status }}</td>
				</tr>
                
			</tbody>
		</table>
	</div>
	
</div>
