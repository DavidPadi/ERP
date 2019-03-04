<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>jsGrid - Validation</title>
    
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,600,400' rel='stylesheet' type='text/css'>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/core.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>
<script src="" type="text/javascript"></script>
<script src="" type="text/javascript"></script>
<script src="" type="text/javascript"></script>

    <link href=" https://cdnjs.cloudflare.com/ajax/libs/jsgrid/1.5.3/jsgrid-theme.css" rel="stylesheet" type="text/css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/jsgrid/1.5.3/jsgrid-theme.min.css" rel="stylesheet" type="text/css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/jsgrid/1.5.3/jsgrid.css" rel="stylesheet" type="text/css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jsgrid/1.5.3/jsgrid.js"  type="text/javascript"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/jsgrid/1.5.3/jsgrid.min.css" rel="stylesheet" type="text/css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jsgrid/1.5.3/jsgrid.min.js" type="text/javascript"></script>



    <script src="resources/js/db.js"></script>

    <script src='resources/js/jsgrid.core.js'></script>
    <script src='resources/js/jsgrid.load-indicator.js'></script>
    <script src='resources/js/jsgrid.load-strategies.js'></script>
    <script src='resources/js/jsgrid.sort-strategies.js'></script>
    <script src='resources/js/jsgrid.validation.js'></script>
    <script src='resources/js/jsgrid.field.js'></script>
    <script src='resources/js/jsgrid.field.text.js'></script>
    <script src='resources/js/jsgrid.field.number.js'></script>
    <script src='resources/js/jsgrid.field.select.js'></script>
    <script src='resources/js/jsgrid.field.checkbox.js'></script>
    <script src='resources/js/jsgrid.field.control.js'></script>



<title>Diseñador</title>
</head>
<body>
	<div id="jsGrid"></div>
	
		<script>
    var clients = [
        { "Name": "Otto Clay", "Age": 25, "Country": 1, "Address": "Ap #897-1459 Quam Avenue", "Married": false },
        { "Name": "Connor Johnston", "Age": 45, "Country": 2, "Address": "Ap #370-4647 Dis Av.", "Married": true },
        { "Name": "Lacey Hess", "Age": 29, "Country": 3, "Address": "Ap #365-8835 Integer St.", "Married": false },
        { "Name": "Timothy Henson", "Age": 56, "Country": 1, "Address": "911-5143 Luctus Ave", "Married": true },
        { "Name": "Ramona Benton", "Age": 32, "Country": 3, "Address": "Ap #614-689 Vehicula Street", "Married": false }
    ];
 
    var countries = [
        { Name: "", Id: 0 },
        { Name: "United States", Id: 1 },
        { Name: "Canada", Id: 2 },
        { Name: "United Kingdom", Id: 3 }
    ];
 
    $("#jsGrid").jsGrid({
        width: "100%",
        height: "400px",
 		
        filtering: true,
        inserting: true,
        editing: true,
        sorting: true,
        paging: true,
 
        data: clients,
 
        fields: [
            { name: "Name", type: "text", width: 150, validate: "required" },
            { name: "Age", type: "number", width: 50 },
            { name: "Address", type: "text", width: 200 },
            { name: "Country", type: "select", items: countries, valueField: "Id", textField: "Name" },
            { name: "Married", type: "checkbox", title: "Is Married", sorting: false },
            { type: "control" }
        ]
    });
</script> 	
</body>
</html>