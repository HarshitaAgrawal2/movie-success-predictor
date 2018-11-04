<!DOCTYPE html>
<html>
<head>
	<title>predict movie</title>
	<style>
		body {
		    background-image: url("film.PNG");
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
		    margin-top:5%;
		    
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
		}
	</style>
</head>
<body>
	<a href="main.html">Back to Home</a>
	<div>
		<h1 style="font-size:50px">Enter Movie Name</h1>
		<form method="post">
			<label>Movie Name</label>
			<input type="text" name="moviename" placeholder="Enter movie name">
			<input type="submit" name="searchname">
		</form>
	</div>
</body>
<?php
	if ( isset( $_POST['searchname'] ) )
	{
		if ( $_POST['moviename']!=null) {
			
		
			$display = '';
			$movie_name = $_POST['moviename'];
			$conn = mysql_connect('localhost:3306','root','');
			mysql_select_db('movieprediction');
			$sql = "select * from new_movies where movie_name='$movie_name'";
			$status = mysql_query($sql, $conn);
			if(! $status){
				die('Error in connection') ;
			}
			while($row = mysql_fetch_array($status)){
				$actorString = $row['actors'];
				$actressString = $row['actress'];
				$directorString = $row['directors'];
				$writerString = $row['writer'];
				$producerString = $row['producers'];
			}
			//Actor
		   	$actorArray = split ("\,", $actorString); 
		   	$i = 0;
		   	$actorClass = 0;
		   	while ($i < sizeof( $actorArray)) {
		 		$actor = $actorArray[$i] ; // taking name
		 		$lblArray[$i] = 1; //initialize
		   		$sql = "select lbl from actors_lbl where actor_name='$actor'";
				$status = mysql_query($sql, $conn);
				if(! $status){
					$lblArray[$i] = 1; // if actor is new or actor is not found in database
				}
				else{
					while($row = mysql_fetch_array($status)){
						$lbl = $row['lbl'];
						if ($lbl<6) {
							$lblArray[$i]  = 1; // 1 for flop
						}
						else if ($lbl<8) {
							$lblArray[$i]  = 2; // 2 for hit
						}
						else {
							$lblArray[$i]  = 3; // 3 for super hit
						}
					}
				}
				//echo $lblArray[$i] ;
				$actorClass = $actorClass + $lblArray[$i] ;
			   	$i = $i+1;
			}
			$actorClass = $actorClass/sizeof($lblArray) ;
				//echo $actorClass;
			//Actress
			$actressArray = split ("\,", $actressString); 
		   	$i = 0;
		   	$actressClass = 0;
		   	while ($i < sizeof( $actressArray)) {
		 		$actress = $actressArray[$i] ; // taking name
		 		$lblArray[$i] = 1; //initialize
		   		$sql = "select label from actress_label where actress_name='$actress'";
				$status = mysql_query($sql, $conn);
				if(! $status){
					$lblArray[$i] = 1; // if actor is new or actor is not found in database
				}
				else{
					while($row = mysql_fetch_array($status)){
						$lbl = $row['label'];
						if ($lbl<6) {
							$lblArray[$i]  = 1; // 1 for flop
						}
						else if ($lbl<8) {
							$lblArray[$i]  = 2; // 2 for hit
						}
						else {
							$lblArray[$i]  = 3; // 3 for super hit
						}
					}
				}
				//echo $lblArray[$i] ;
				$actressClass = $actressClass + $lblArray[$i] ;
			   	$i = $i+1;
			}
			$actressClass = $actressClass/sizeof($lblArray) ;
				//echo $actorClass;

			//Director
			$directorArray = split ("\,", $directorString); 
		   	$i = 0;
		   	$directorClass = 0;
		   	while ($i < sizeof( $directorArray)) {
		 		$director = $directorArray[$i] ; // taking name
		 		$lblArray[$i] = 1; //initialize
		   		$sql = "select lbl from directors_lbl where director_name='$director'";
				$status = mysql_query($sql, $conn);
				if(! $status){
					$lblArray[$i] = 1; // if actor is new or actor is not found in database
				}
				else{
					while($row = mysql_fetch_array($status)){
						$lbl = $row['lbl'];
						if ($lbl<6) {
							$lblArray[$i]  = 1; // 1 for flop
						}
						else if ($lbl<8) {
							$lblArray[$i]  = 2; // 2 for hit
						}
						else {
							$lblArray[$i]  = 3; // 3 for super hit
						}
					}
				}
				//echo $lblArray[$i] ;
				$directorClass = $directorClass + $lblArray[$i] ;
			   	$i = $i+1;
			}
			$directorClass = $directorClass/sizeof($lblArray) ;
				//echo $directorClass;

			//producer
			$producerArray = split ("\,", $producerString); 
		   	$i = 0;
		   	$producerClass = 0;
		   	while ($i < sizeof( $producerArray)) {
		 		$producer = $producerArray[$i] ; // taking name
		 		$lblArray[$i] = 1; //initialize
		   		$sql = "select lbl from producers_lbl where producer_name='$producer'";
				$status = mysql_query($sql, $conn);
				if(! $status){
					$lblArray[$i] = 1; // if actor is new or actor is not found in database
				}
				else{
					while($row = mysql_fetch_array($status)){
						$lbl = $row['lbl'];
						if ($lbl<6) {
							$lblArray[$i]  = 1; // 1 for flop
						}
						else if ($lbl<8) {
							$lblArray[$i]  = 2; // 2 for hit
						}
						else {
							$lblArray[$i]  = 3; // 3 for super hit
						}
					}
				}
				//echo $lblArray[$i] ;
				$producerClass = $producerClass + $lblArray[$i] ;
			   	$i = $i+1;
			}
			$producerClass = $producerClass/sizeof($lblArray) ;
				//echo $producerClass;

			//writer	
			$writerArray = split ("\,", $writerString); 
		   	$i = 0;
		   	$writerClass = 0;
		   	while ($i < sizeof( $writerArray)) {
		 		$writer = $writerArray[$i] ; // taking name
		 		$lblArray[$i] = 1; //initialize
		   		$sql = "select lbl from writers_lbl where writer_name='$writer'";
				$status = mysql_query($sql, $conn);
				if(! $status){
					$lblArray[$i] = 1; // if actor is new or actor is not found in database
				}
				else{
					while($row = mysql_fetch_array($status)){
						$lbl = $row['lbl'];
						if ($lbl<6) {
							$lblArray[$i]  = 1; // 1 for flop
						}
						else if ($lbl<8) {
							$lblArray[$i]  = 2; // 2 for hit
						}
						else {
							$lblArray[$i]  = 3; // 3 for super hit
						}
					}
				}
				//echo $lblArray[$i] ;
				$writerClass = $writerClass + $lblArray[$i] ;
			   	$i = $i+1;
			}
			$writerClass = $writerClass/sizeof($lblArray) ;
				//echo $writerClass;

			//Calculation
			$result = ($actorClass*5 + $actressClass*4 + $directorClass*3 + $writerClass*2 + $producerClass*1)/15;
			if ($result<=1) {
				//echo "Flop";
				echo '<div id="display">Flop</div> ';
			}
			else if ($result<=2) {
				//echo 'Hit';
				echo '<div id="display">Hit</div> ';
			}
			else{
				//echo "Super Hit";
				echo '<div id="display">Super Hit</div> ';
			}
			
		}
	}
?>
</html>
