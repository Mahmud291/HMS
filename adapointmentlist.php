<?php require('session.php');?>
<?php require('header.php'); ?>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="css/appointmentlist.css">
</head>
<body>

<h3>Add Appointment list</h3>
<!---<div class="hd">
<img src="img/logo  design with.JPG" alt="picture">
</div>---->
<div class="pc">
<!---<img src="img/rip.jpg" alt="picture">--->

<div>
  <form action="#" method="POST">
    <label >Doctor Name</label>
    <input type="text" name="name" placeholder="Your name.." required>
    <label >Patient Name</label>
    <input type="text" name="pname" placeholder="Patient name.." required>
    <label >Date</label>
    <input type="text" name="date" placeholder="yyyy-mm-dd" required>
    <label >Patient Problem</label>
    <input type="text" name="Problem" placeholder="Patient Problem.." required>
    <!--<label for="Specialist">Specialist</label>
    <select id="Specialist" name="Specialist">
      <option value="Addiction psychiatrist">Addiction psychiatrist</option>
      <option value="Cardiologist">Cardiologist</option>
      <option value="Cardiovascular surgeon">Cardiovascular surgeon</option>
      <option value="Anesthesiologist">Anesthesiologist</option>
    </select>
  -->

    <input name="submit" type="submit" value="Submit">
  </form>
</div>
</div>
</br>
<?php require('footer.php'); ?>
</body>
</html>
<?php
include('connect.php');
if (isset($_POST['submit'])){
$dname = $_POST['name'];
$pname = $_POST['pname'];
$date = $_POST['date'];
$Problem = $_POST['Problem'];
if(!mysqli_connect_errno()){
  $visibility = 1;
  $query = "INSERT INTO  appoint (`dname`, `pname`, `date`,`Problem`, `visibility`) VALUES ('{$dname}', '{$pname}', '{$date}','{$Problem}', '{$visibility}')";
  if(mysqli_query($connection, $query)){
    echo "sucessful";
  }else{
    echo "databse insert failed";
  }
}else{
  die("Error: ".mysqli_connect_error());
}
mysqli_close($connection);
}


?>