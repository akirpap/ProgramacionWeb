<?php
	$usr = $_POST['usuario'];
	$pwd = $_POST['clave'];

	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "testcalculado";

	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);

	// Check connection
	if ($conn->connect_error) {
	    die("No hay conexión con la base de datos: " . $conn->connect_error);
	}

	// Select data from database
	$sql = "SELECT * FROM tb_user WHERE User='$usr' and Password='$pwd'";
	$result = $conn->query($sql);

	//Read and show data
	if ($result->num_rows > 0) {    
    	header("location:calificacion.php");
	} else {
	    echo "Usuario Inválido";
	}

	$conn->close();
?>