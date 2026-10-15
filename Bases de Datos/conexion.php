<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset="UTF-8">
		<title>Conexion con Bases de datos</title>
		<style>
			body {
				font-family: "Segoe UI", "Verdana", sans-serif;
			}
			h1 {
				margin: 80px 0;
				text-align: center
			}
			table {
				margin: auto;
				border-collapse: collapse;
				background: #fafafa;
			}
			td {
				padding: 5px 15px;
				border-bottom: 1px solid #ccc;
			}
			tr:nth-child(odd) {
				background: #eee;
			}
			tr:first-child {
				background: #777;
				color: white;
				font-weight: bold;
			}
		</style>
	</head>
	<body>

		<h1>Ejemplo de conexión con Base de Datos</h1>

		<table>
			<?php
			// abre conexión con bbdd
			$conexion = new mysqli("localhost", "root", "", "formacion");
			// indica la codificacion de las conexión
			$conexion->set_charset("utf8");
			// abre una consulta
			$resultado= $conexion->query("SELECT * FROM profesores");

			// da formato como filas de una tabla HTML
			$i=0;
			while ($registro = $resultado->fetch_object()) {
				//Fila de Campos
				if ($i == 0){
					echo " <tr>\n";
					foreach ($registro as $campo => $v) {
						echo " <td>" . $campo . "</td>\n";
					}
					echo " </tr>\n";
					$i=1;
				}
       // Filas de Registros
				echo " <tr>\n";
				foreach ($registro as $valor) {
					echo " <td>" . $valor . "</td>\n";
				}
				echo " </tr>\n";
			}
			// cierra la consulta
			$resultado->close();
			// cierra conexión
			$conexion->close();
			?>
		</table>



	</body>
</html>