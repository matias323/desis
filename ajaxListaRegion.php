<?php

function getListaRegion(){
    require_once('conexion/conexion.php');
	$query = 'SELECT id, nombre FROM region ORDER BY nombre';
	$resultado = $mysqli->query($query);
	$listas='<option value="0">**********Seleccione una Region*************</option>';
	while ($row = $resultado->fetch_array(MYSQLI_ASSOC)) 
    {
        $listas.= "<option value='$row[id]'>$row[nombre]</option>";
	}
	
	return $listas;
}

echo getListaRegion();
?>