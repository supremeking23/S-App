
//for navigations

         



 $(document).ready(function(){
      $('#errormodal').modal('show');
    });


  $(document).ready(function(){
    $('#successmodal').modal('show');
  });


/* $(document).ready(function(){
    $('#read_unread_message').modal('show');
  });*/


//datatables
  $(function () {
    $('#example1').DataTable()
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })




    $(function () {
    $('.datatable').DataTable()
    $('.example3').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })


//for tooltip
 $(document).ready(function(){
       $('[data-tooltip="tooltip"]').tooltip();
    });





/*$(document).ready(function() {
    $('#example').DataTable( {
        "lengthMenu": [[5,10, 25, 50, -1], [5,10, 25, 50, "All"]],

         "paging":   true,
        "ordering": false,
        "info":     true
    } );





} );*/