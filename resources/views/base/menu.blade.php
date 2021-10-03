
<ul class="sidebar-menu" data-widget="tree">
	<li class="header" style="background-color: #1583b5;">MAIN NAVIGATION</li>
	
	<li class="treeview">
		<a href="#">
			<i class="fa fa-laptop"></i>
			<span>Master</span>
			<span class="pull-right-container">
				<i class="fa fa-angle-left pull-right"></i>
			</span>
		</a>
		<ul class="treeview-menu">
			<li><a href="{{ route('dompet.index') }}"><i class="fa fa-circle-o"></i> Dompet</a></li>
			k<li><a href="{{ route('kategori.index') }}"><i class="fa fa-circle-o"></i> kategori</a></li>
			
		</ul>
	</li>

	<li class="treeview">
		<a href="#">
			<i class="fa fa-laptop"></i>
			<span>Transaksi</span>
			<span class="pull-right-container">
				<i class="fa fa-angle-left pull-right"></i>
			</span>
		</a>
		<ul class="treeview-menu">
			<li><a href="{{ route('transaksi-masuk.index') }}"><i class="fa fa-circle-o"></i> Transaksi Masuk</a></li>
			k<li><a href="{{ route('transaksi-keluar.index') }}"><i class="fa fa-circle-o"></i> Transaksi Keluar</a></li>
			
		</ul>
	</li>

	<li><a href="/laporan"><i class="fa fa-book"></i> <span>Laporan</span></a></li>