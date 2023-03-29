<?php

function getListaComuna(){
    $region=$_POST['elegido'];
    if($region==0){
        $listas='<option value="0">**********Seleccione una Region Primero*************</option>';
    }else{
        require_once('conexion/conexion.php');
        $query = "SELECT id, nombre FROM comunas WHERE id_region='$region' ORDER BY nombre";
        $resultado = $mysqli->query($query);
        $listas='<option value="0">**********Seleccione una Comuna*************</option>';
        while ($row = $resultado->fetch_array(MYSQLI_ASSOC)) 
        {
            $listas.= "<option value='$row[id]'>$row[nombre]</option>";
        }
        
        return $listas;
    }
}

echo getListaComuna();
?>
