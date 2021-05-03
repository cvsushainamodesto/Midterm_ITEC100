<!DOCTYPE html>
<html lang="em">
<head>

	<title> EVENT DATABASE</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- jQuery library -->
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	 <!-- Popper JS -->
	 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

	<style>
		
		<table tr:hover{
			cursor: pointer;
			background-color: gray;
		}

		table thead{
			background: darkgreen;

		}

		table thead tr th{
			color: #fff;
		}

	</style>

	<script>
	$(document).ready(function(){
		$('table tr').click(function(){

			var  id = $(this).attr('row_id');
			windows.open("http://localhost:A.Activity3/New Employee/newemployee.php?id=" + id);

		});
	});
	</script>
</head>
<body>

	<div class="container">
		<h2 style="margin-top: 30px; margin-bottom: 20px; text-align: center;">EVENT DATABASE</h2>
		<table class="table table-bordered table-hoveer">
			<thead>
				<tr>
					
					<th>Account User</th>
					<th>Event Action</th>
					<th>Event Time</th>
					
				</tr>
			</thead>

			<tbody>
				<?php
					include 'database/database.php';
					$con =  mysql_connect();

					$query = 'SELECT event_id, account_user, event_action, event_time FROM event_log';

					$result = $con-> query($query);

					$output = array();

					if($result-> num_rows > 0){
					//output  data of each row
						while ($row = $result-> fetch_assoc()) {
								echo "<tr row_id='" . $row["event_id"]  . "<tr><td>" . $row["account_user"] . "</td>" . "<td>" .$row["event_action"] . "</td>". "<td>". $row["event_time"] . "</td>" ."</tr>";
							}
							echo "</table>";	
					}
					else{
						echo "0 results";
					}
					$con-> close();
				?>		

			</tbody>
		
		</table>


				
	</div>

</body>
</html>