<script src="{{ asset('js/dist-jquery.min.js')}}"></script>
<script src="{{ asset('js/js-bootstrap.min.js')}}"></script>
<script src="{{ asset('js/lib-fastclick.js')}}"></script>
<script src="{{ asset('js/js-adminlte.min.js')}}"></script>
<script src="{{ asset('js/dist-jquery.sparkline.min.js')}}"></script>
<script src="{{ asset('js/jvectormap-jquery-jvectormap-1.2.2.min.js')}}"></script>
<script src="{{ asset('js/jvectormap-jquery-jvectormap-world-mill-en.js')}}"></script>
<script src="{{ asset('js/jquery-slimscroll-jquery.slimscroll.min.js')}}"></script>
<script src="{{ asset('js/chart.js-Chart.js')}}"></script>
<script src="{{ asset('js/pages-dashboard2.js')}}"></script>
<script src="{{ asset('js/js-demo.js')}}"></script>
<script src="{{ asset('js/jquery.dataTables.min.js')}}"></script>
<script src="{{ asset('js/dataTables.bootstrap.min.js')}}"></script>
<script src="{{ asset('sweetalert2/sweetalert2.all.min.js') }}"></script>
<script src="{{ asset('select2/dist/js/select2.full.min.js') }}"></script>
<script src="{{ asset('js/dropzone.min.js') }}"></script>
<script>
	$(function () {
	  $('.select2').select2()
	});

	$(document).ready(function(){
	  	var url = window.location.href;
	  	var attr = $('li').data('href');

	  	// alert(attr);

	});
</script> 


@stack('scripts')
<script src="{{ asset('js/app.js') }}"></script>