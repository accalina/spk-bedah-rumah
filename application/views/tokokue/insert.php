<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

     <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> 
    <style>
        body {
            margin-top: 15px;
        }
    </style>
</head>
<body>
    <div class="container">

        <ul>
            <li> <a href="index">View </a></li>
            <li> Insert </li>
            <li> <a href="Update">Update </a></li>
            <li> <a href="Delete">Delete </a></li>
        </ul>

        <form action="insert_engine" method="post">
            Nama Customer:
            <input type="text" name="customer"><br>
            Nama Kue:
            <select name="namakue" id="namakue">
                <option value="BlackForest">Black Forest</option>
                <option value="Tiramisu">Tiramisu</option>
                <option value="CheeseCake">Cheese Cake</option>
                <option value="RainbowCake">Rainbow Cake</option>
            </select><br>
            <input type="submit" value="Save Data">
        </form>

    </div>
</body>
</html>