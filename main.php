<?php 

?>
 
<!DOCTYPE html>
<html>

<head>
<title>Lab Activity - Main</title>
<link rel="stylesheet" href="styless.css" />
</head>

<body>

<form method="post">

<div class="w3-container">

<h1 class="aa">Welcome to my Website</h1>

<div class="form1">

<p>The path of the righteous man is beset on all sides by the inequities of the selfish and the tyranny of evil men. Blessed is he, who in the name of charity and good will, shepherds the weak through the valley of darkness, for he is truly his brother's keeper and the finder of lost children. And I will strike down upon thee with great vengeance and furious anger those who would attempt to poison and destroy my brothers. And you will know my name is the Lord when I lay my vengeance upon thee.</p>

<address><b>CvSU - Imus Campus || 2021</b></address>    

    <br><br><br>
    
    <center>
    	<button type="submit" class="btn" method="post" name="logout" id="logout">Logout</button>
    </center>

</form>

</div>
</div>
</body>

<?php
session_start();

  include 'config.php';

  $_SESSION["verify"] = false;
  $_SESSION["code_access"] = false;

  if (isset($_REQUEST['logout'])){

        date_default_timezone_set('Asia/Manila');
        $currentDate = date('Y-m-d H:i:s');
        $currentDate_timestamp = strtotime($currentDate);
        $_SESSION["current"] = $currentDate;

        $_SESSION["verify"] = true;
        $_SESSION["code_access"] = true;

        $id = $_SESSION["id"];
        $username = $_SESSION["username"];

        $sql = "INSERT INTO `userlog` (user_id, username, activity, dateandtime) VALUES ('$id', '$username', 'Logged Out', '$currentDate')";
            $result = mysqli_query($con, $sql);
      
        if($result){
            header("Location: ../ITEC100B-Webpage/index.php");
        }else{

        }      
  }
      
?>

</html>
