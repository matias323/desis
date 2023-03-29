<?php
require_once('conexion/conexion.php');

$nombre=$_POST['nombre'];
$alias=$_POST['alias'];
$rut=$_POST['rut'];
$correo=$_POST['correo'];
$region=$_POST['region'];
$comuna=$_POST['comuna'];
$candidato=$_POST['candidato'];
$web=$_POST['web'];
$tv=$_POST['tv'];
$redes=$_POST['redes'];
$amigo=$_POST['amigo'];

//VERIFICO SI HAY RUT REGISTRADO
$sqlRut = "SELECT * FROM votacion WHERE rut = '$rut'";
$resultado = $mysqli->query($sqlRut);
if($r = $resultado->fetch_assoc()){
	// SI REGISTRA VOTACION
	$data["validar"] = 1;
}else{
    //NO HAY VOTACION
    $sqlInsert="INSERT INTO votacion(id,nombre,alias,rut,correo,region,comuna,candidato,web,tv,redes,amigo) VALUES('','$nombre','$alias','$rut',
    '$correo','$region','$comuna','$candidato','$web','$tv','$redes','$amigo')";

    if($mysqli->query($sqlInsert)){
        $data["validar"]=2;
    }else{
        $data["validar"]=3;
    }
}

echo json_encode($data);

?>