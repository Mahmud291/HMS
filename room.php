<?php require('session.php');?>
<?php require('header.php'); ?>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="css/appointmentlist.css">
</head>
<body>

<h3>ROOM </h3>
<!---<div class="hd">
<img src="img/logo  design with.JPG" alt="picture">
</div>---->
<div class="pc">
<!---<img src="img/rip.jpg" alt="picture">--->

<div>

</div>
</div>
</body>
</html>
<?php
  include('connect.php');
  if(!mysqli_connect_errno())
  {
  $query = "SELECT *  FROM `room` WHERE `visibility` = 1";

  $result = mysqli_query($connection, $query);
  if($result){
    echo "<table id = tbl5>
    <tr>
      <th>Sl no</th>
      <th>Room No</th>
      <th>Patient Name</th>
      <th>Nurse Name</th>
      <th>Date</th>
      <th>Room Type</th>
     </tr>";
    $sl_no =0;
    while ($row = mysqli_fetch_array($result, MYSQLI_BOTH)){
      $sl_no = $sl_no + 1;
      $id = $row['room_no'];
      echo "<tr>";
      echo "<td>".$sl_no."</td>";
      echo "<td>".$row['room_no']."</td>";
      echo "<td>".ucwords($row['patient'])."</td>";
      echo "<td>".$row['nurse']."</td>";
      echo "<td>".$row['date']."</td>";
      echo "<td>".$row['roomtype']."</td>";
      echo "</tr>";
    }
    echo "</table>"."</br>";
require 'footer.php';
  }}
else{
  die("Error: ".mysqli_connect_error());
}
mysqli_close($connection);
?>
