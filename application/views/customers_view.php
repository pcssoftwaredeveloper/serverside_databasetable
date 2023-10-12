<!DOCTYPE html>
<html>
    <head> 
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Simple Serverside jQuery Datatable</title>
    <link href="<?php echo base_url('assets/datatables/css/jquery.dataTables.min.css')?>" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        img{
            border-radius: 50%;
            border:1px solid gray;
        }
    </style>
    </head> 
<body>
    <div class="container">
        <h1 style="font-size:20pt">Simple Serverside Datatable Codeigniter</h1>

        <h3>Customers Data</h3>
        <button id="delete_selected_item">Delete Selected Item</button>
        <br />
       
        <table id="table" class="display" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <th><input type="checkbox" name="checkbox" id="SelectAllCheck"></th>
                    <th>No</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Phone</th>
                    <th>Address</th>
                    <th>City</th>
                    <th>Country</th>
                </tr>
            </thead>
            <tbody>

            </tbody>

            <tfoot>
                <tr>
                    <th>No</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Phone</th>
                    <th>Address</th>
                    <th>City</th>
                    <th>Country</th>
                    <th></th>
                </tr>
            </tfoot>
        </table>
    </div>

<script src="<?php echo base_url('assets/jquery/jquery-2.2.3.min.js')?>"></script>
<script src="<?php echo base_url('assets/datatables/js/jquery.dataTables.min.js')?>"></script>


<script type="text/javascript">

var table;

$(document).ready(function() {

    //datatables
    table = $('#table').DataTable({ 

        "processing": true, //Feature control the processing indicator.
        "serverSide": true, //Feature control DataTables' server-side processing mode.
        "order": [], //Initial no order.

        // Load data for the table's content from an Ajax source
        "ajax": {
            "url": "<?php echo site_url('customers/ajax_list')?>",
            "type": "POST"
        },

        //Set column definition initialisation properties.
        "columnDefs": [
        { 
            "targets": [ 0 ], //first column / numbering column
            "orderable": false, //set not orderable
        },
        ],

    });

});


    $('#SelectAllCheck').change(function() {
        $('.checks').prop("checked", $(this).prop("checked"))
    });

    $("#delete_selected_item").click(function()
    {
        var confirms = confirm("Are you sure delete selected item!");

        var id = $('.checks:checked').map(function() {
          return $(this).val()
        }).get().join(' ')

        
        if(confirms==true)
        {
            if(id.length > 0)
            {
                $.ajax({
                    url: "<?php echo base_url('index.php/customers/delete_selected_item'); ?>",
                    type: "POST",
                    data: {id:id},
                    success:function(data)
                    {
                        var obj = JSON.parse(data)
                        alert(obj.msg);
                        window.location.reload();
                    }
                })
            }else{
                alert("Please select at least one item!");
            }            
        }
    });
</script>

</body>
</html>