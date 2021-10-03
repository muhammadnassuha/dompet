
$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});

$('body').on('click', '.btn-haha', function(e){
    e.preventDefault();

    var me = $(this),
        url = me.attr('btn-data');
    
    swal({
        title : 'Are you sure ?',
        type : 'warning',
        showCancelButton : true,
        confirmButtonColor : '#3085d6',
        cancelButtonColor : '#d33',
        confirmButtonText : 'update data ?'
    }).then((result)=>{
        if(result.value){
            $.ajax({
                url : url,
                type : 'get',
               
                success : function(r){
                    reloadWidget()
                    $('#datatable').DataTable().ajax.reload();
                    
                    swal({
                        type : 'success',
                        title : 'Success',
                        text : 'Data successfully update'
                    });
                },
                error : function(er){
                    if(er.status == 403){

                        swal({
                            type : 'error',
                            title : 'Error 403',
                            text : 'Unauthorized action'
                        });

                    }else{

                        swal({
                            type : 'error',
                            title : 'Failed',
                            text : 'Data gagal dihapus'
                        });
                        
                    }
                        
                }
            });
        }
    });


});

$('body').on('click', '.modal-show', function(e){
    e.preventDefault();

    var me = $(this),
        url = me.attr('href'),
        title = me.attr('title'),
        id = me.data('id');
    
    $('#modal-title').text(title);
    $('#modal-btn-save').removeClass('hide').text(me.hasClass('edit') ? 'Update' : 'Create');
    
    $.ajax({
        url: url,
        dataType: 'html',
        success: function(response)
        {
            $('#modal').modal('show');
            $('#modal-body').html(response);
            
        },
        error : function(error)
        {
            $('#modal').modal('hide');
            swal({
                type : 'error',
                title : 'Error 401',
                text : 'Unauthorized action'
            });
        }
    });

});


$('#modal-btn-save').click(function(e){
    e.preventDefault();

    var form = $('#modal-body form'),
        url = form.attr('action'),
        method = $('input[name=_method]').val() == undefined ? 'post' : 'put';


    form.find('.help-block').remove();
    form.find('.form-group').removeClass('has-error');
    
    $.ajax({
        url : url,
        method : method,
        data : form.serialize(),
        success : function(response){
            $('#modal').modal('hide');
            $('#datatable').DataTable().ajax.reload();
            
            swal({
                type : 'success',
                title : 'Success',
                text : 'Saved'
            });
        },
        error : function(e){
            console.log('error : '+e);
            var response = e.responseJSON;
            // console.log(response);
            if (e.status == 300) {
                swal({
                    type : 'warning',
                    title : 'Warning !',
                    text : 'Harga jual tidak boleh lebih kecil dari harga beli.'
                });
            }

            if($.isEmptyObject(response) == false)
            {
                $.each(response.errors, function(key, value) {
                    $('#' + key)
                        .closest('.form-group')
                        .addClass('has-error')
                        .append('<span class="help-block">'+ value +'</span>')
                });
            }
        }
    });
});

$('body').on('click', '.btn-show', function(e){
    e.preventDefault();

    var me = $(this),
        url = me.attr('href'),
        title = me.attr('title'); 

    $('#modal-title').text(title);
    $('#modal-btn-save').addClass('hide');

    $.ajax({
        url :url,
        dataType : 'html',
        success : function(response){
            $('#modal').modal('show');
            $('#modal-body').html(response);
        },
        error : function(error)
        {
            $('#modal').modal('hide');

            if(error.status == 403){

                swal({
                    type : 'error',
                    title : 'Error 403',
                    text : 'Unauthorized action'
                });

            }else{

                swal({
                    type : 'error',
                    title : 'Error 500',
                    text : 'Internal server error'
                });

            }
        }
    });

});

$('body').on('click', '.btn-delete', function(e){
    e.preventDefault();

    var me = $(this),
        url = me.attr('href'),
        title = me.attr('title');

        // alert(csrf_token);
    
    swal({
        title : 'Are you sure '+title+' ?',
        type : 'warning',
        showCancelButton : true,
        confirmButtonColor : '#3085d6',
        cancelButtonColor : '#d33',
        confirmButtonText : 'Update'
    }).then((result)=>{
        if(result.value){
            $.ajax({
                url : url,
                type : 'post',
                data : {
                    '_method': 'DELETE',
                },
                success : function(r){
                    $('#datatable').DataTable().ajax.reload();
                    
                    swal({
                        type : 'success',
                        title : 'Success',
                        text : 'Data successfully deleted'
                    });
                },
                error : function(er){
                    if(er.status == 403){

                        swal({
                            type : 'error',
                            title : 'Error 403',
                            text : 'Unauthorized action'
                        });

                    }else{

                        swal({
                            type : 'error',
                            title : 'Failed',
                            text : 'Data gagal dihapus'
                        });
                        
                    }
                        
                }
            });
        }
    });

});

