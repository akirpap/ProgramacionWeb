<?php 
class Datos{
		public $server = 'localhost';
		public $username = 'root';
		public $password = '';
		public $database = 'testcalculado';
	
		function Datos(){
			$this->conexion = @new mysqli($this->server, $this->username, $this->password, $this->database);
				if ($this->conexion->connect_error) {
					die('Error de conexión: '.$this->conexion->connect_error);
				}
		}

				function Crear_Calificacion(){
			if (isset($_POST[promedio])) {
				$id = 1;
				$id_User = 1;
				$id_Restaurante = 1;
                $val1= 5;
                $val2= 3;
                $val3= 4;
				$score = (($val1+$val2+$val3)/3);
				$sql="INSERT INTO persona (pers_id, pers_name, pers_user, pers_pass) VALUES ('$id','$id_User','$id_Restaurante','$score')";
				$query=$this->conexion->query($sql) or die ("Error en: $sql: ". mysql_error());
			}			
		}
}
?>