<!DOCTYPE html>
<html lang="en">
<head>
    <title>Lab Activity - User Log</title> 

    <meta charset="UTF-8">
    <link rel="stylesheet" href="styless.css"/>
    <meta name="viewport" content="width-device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   
</head>  
<body>
                
    <div class="wrapper">
        <h1 id="hhhh"> USER LOG  <button type="button" class="btn" name="register" onclick="window.location.href='../ITEC100B-Webpage/index.php'">BACK</button></h1>
        <form action="" method="post" name="login">
        <div class="container">
               

        </div>
    </div><br>

</body>
<center>

<?php
    require_once "config.php";

    $result = mysqli_query($con,"SELECT * FROM userlog");

    echo "<table border='1'>
    <tr>
    <th>Log ID</th>
    <th>User ID</th>
    <th>Username</th>
    <th>Activity</th>
    <th>Date And Time</th>
    </tr>";

    while($row = mysqli_fetch_array($result))
    {
        echo "<tr>";
        echo "<td>" . $row['logid'] . "</td>";
        echo "<td>" . $row['user_id'] . "</td>";
        echo "<td>" . $row['username'] . "</td>";
        echo "<td>" . $row['activity'] . "</td>";
        echo "<td>" . $row['dateandtime'] . "</td>";
        echo "</tr>";
    }
    echo "</table>";

    mysqli_close($con);
?>
</center>
</html>