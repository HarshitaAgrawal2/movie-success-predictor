
<!DOCTYPE html>
<html>
<head>
	<title>predict movie</title>
	<style>
		body {
		    background-image: url("images/crew.PNG");
		    background-repeat: repeat;
		    background-color: #cccccc;
		}
		input[type=text], select {
		    width: 100%;
		    padding: 12px 20px;
		    margin: 8px 0;
		    display: inline-block;
		    border: 1px solid #ccc;
		    border-radius: 4px;
		    box-sizing: border-box;
		}

		input[type=submit] {
		    width: 100%;
		    background-color: #2962FF;
		    color: white;
		    padding: 14px 20px;
		    margin: 8px 0;
		    border: none;
		    border-radius: 4px;
		    cursor: pointer;
		}

		input[type=submit]:hover {
		    background-color: #1A237E;
		}

		div {
		    border-radius: 5px;
		    background-color: #f2f2f2;
		    padding: 30px;
		    margin: 0 20% ;   
		}

		#display{
			text-align: center;
			font-size: 20px;
			margin-top:1%;
			padding: 20px;
			border-radius:50px 50px;
			background-color: #1A237E;
			color:white;
		}
		a{
			text-decoration: none;
			padding:30px;
			display: block;
			border-radius:100px 100px;
			background-color: #651FFF;
			width:4%;
			color:white;
			font-size: 20px;
		}
		a:hover{
			background-color: #283593;
			color:#ECEFF1;
		}	</style>
</head>
<body>
	<a href="main.html">Back to Home</a>
	<div>
		<h1 style="font-size:50px">Enter film Crew Details</h1>
		<form method="post">
			<label>Actor Name</label>
			<input type="text" name="actorname" placeholder="Enter Actor name...">
			<label>Actress Name</label>
			<input type="text" name="actressname" placeholder="Enter Actress name...">
			<label>Director Name</label>
			<input type="text" name="directorname" placeholder="Enter Director name...">
			<label>Writer Name</label>
			<input type="text" name="writername" placeholder="Enter Writer name...">
			<label>Producer Name</label>
			<input type="text" name="producername" placeholder="Enter Producer name...">
			<input type="submit" name="filmCrew">
		</form>
	</div>
</body>
<?php

	if ( isset( $_POST['filmCrew'] ) )
	{
		$actor = $_POST['actorname'];
		$actress = $_POST['actressname'];
		$director = $_POST['directorname'];
		$writer = $_POST['writername'];
		$producer = $_POST['producername'];

		$conn = mysql_connect('localhost:3306','root','');
		mysql_select_db('movieprediction');

		//Initialize 
		$actor_class = 1;
		$actress_class = 1;
		$director_class = 1;
		$writer_class = 1;
		$producer_class = 1;
		//Actor
		$sql = "select lbl from actors_lbl where actor_name='$actor'";
		$status = mysql_query($sql, $conn);
		if(! $status){
			$actor_class = 1; // if actor is new or actor is not found in database
		}
		else{
			while($row = mysql_fetch_array($status)){
				$lbl = $row['lbl'];
				if ($lbl<6) {
					$actor_class = 1; // 1 for flop
				}
				else if ($lbl<8) {
					$actor_class = 2; // 2 for hit
				}
				else{
					$actor_class = 3; // 3 for super hit
				}
			}
		}
		//Actress
		$sql = "select label from actress_label where actress_name='$actress'";
		$status = mysql_query($sql, $conn);
		if(! $status){
			$actress_class = 1;
		}
		else{
			while($row = mysql_fetch_array($status)){
				$lbl = $row['label'];
				if ($lbl<6) {
					$actress_class = 1; // 1 for flop
				}
				else if ($lbl<8) {
					$actress_class = 2; // 2 for hit
				}
				else{
					$actress_class = 3; // 3 for super hit
				}
			}
		}
		//
		//Director
		$sql = "select lbl from directors_lbl where director_name='$director'";
		$status = mysql_query($sql, $conn);
		if(! $status){
			$director_class = 1;
		}
		else{
			while($row = mysql_fetch_array($status)){
				$lbl = $row['lbl'];
				if ($lbl<6) {
					$director_class = 1; // 1 for flop
				}
				else if ($lbl<8) {
					$director_class = 2; // 2 for hit
				}
				else{
					$director_class = 3; // 3 for super hit
				}
			}
		}
		//
		//Writer
		$sql = "select lbl from writers_lbl where writer_name='$writer'";
		$status = mysql_query($sql, $conn);
		if(! $status){
			$writer_class = 1;
		}
		else{
			while($row = mysql_fetch_array($status)){
				$lbl = $row['lbl'];
				if ($lbl<6) {
					$writer_class = 1; // 1 for flop
				}
				else if ($lbl<8) {
					$writer_class = 2; // 2 for hit
				}
				else{
					$writer_class = 3; // 3 for super hit
				}
			}
		}
		//
		//Producer
		$sql = "select lbl from producer_lbl where producer_name='$producer'";
		$status = mysql_query($sql, $conn);
		if(! $status){
			$producer_class = 1;
		}
		else{
			while($row = mysql_fetch_array($status)){
				$lbl = $row['lbl'];
				if ($lbl<6) {
					$producer_class = 1; // 1 for flop
				}
				else if ($lbl<8) {
					$producer_class = 2; // 2 for hit
				}
				else{
					$producer_class = 3; // 3 for super hit
				}
			}
		}
		//Calculation
		$result = ($actor_class*5 + $actress_class*4 + $director_class*3 + $writer_class*2 + $producer_class*1)/15;
		if ($result<=1) {
			echo '<div id="display">Flop</div> ';
		}
		else if ($result<=2) {
			echo '<div id="display">Hit</div> ';
		}
		else{
			echo '<div id="display">Super Hit</div> ';
		}
	}
?>

</html>