<?php

function getListaCandidato(){
    require_once('conexion/conexion.php');
	$query = 'SELECT id, nombre, app, apm FROM candidatos';
	$resultado = $mysqli->query($query);
	$listas='<option value="0">**********Seleccione un Candidato*************</option>';
	while ($row = $resultado->fetch_array(MYSQLI_ASSOC)) 
    {
        $listas.= "<option value='$row[id]'>$row[nombre] $row[app] $row[apm]</option>";
	}
	
	return $listas;
}

echo getListaCandidato();
?>