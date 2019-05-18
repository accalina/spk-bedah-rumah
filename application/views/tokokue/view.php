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
            <li> View </li>
            <li> <a href="Insert">Insert </a></li>
            <li> <a href="Update">Update </a></li>
            <li> <a href="Delete">Delete </a></li>
        </ul>

        <table class="table table-bordered table-hover table-striped">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama Customer</th>
                    <th>Nama Kue</th>
                    <th>Tanggal</th>
                    <th>Status</th>
                    <?php if ($this->session->username != ''): ?>
                        <th>Action</th>
                    <?php endif?>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($hasil as $key => $row) : ?>
                <tr>
                    <td><?= $row['id'] ?></td>
                    <td><?= $row['customer'] ?></td>
                    <td><?= $row['nama_kue'] ?></td>
                    <td><?= $row['tanggal'] ?></td>
                    <td><?= $row['status'] ?></td>
                
                    <?php if ($this->session->username != ''): ?>
                    <td>
                        <a href="update?id=<?= $row['id'] ?>">update</a>
                        <a href="delete?id=<?= $row['id'] ?>">delete</a>
                        <a href="diantar?id=<?= $row['id'] ?>">Proses_Order</a>
                    </td>
                    <?php endif ?>

                </tr>
                <?php endforeach ?>
            </tbody>
        </table>

        <?php if ($this->session->username == ''): ?>
        <form action="login" method="post">
            Username: <input type="text" name="username" id="username">
            <br>
            Password: <input type="password" name="password" id="password">
            <br>
            <input type="submit" value="Login">
        </form>
        <?php else: ?>
            <h3>Selamat Datang <?= $this->session->username ?></h3>
            <a href="logout">Logout</a>
        <?php endif ?>
    </div>
</body>
</html>