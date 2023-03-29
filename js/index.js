$(document).ready(function(){
    let seleccion=0;
    //llenar cbox regiones
    $.ajax({
        type:'POST',
        url: 'ajaxListaRegion.php',
        data: {'peticion:':'cargar_listas'}
    })
    .done(function(listas_rep){
        $('#region').html(listas_rep);
    })
    .fail(function(){
        alert('Hubo un error.');
    })
    //fin llenar region

    //llenar cbox comuna dependiendo seleccion de region
    $("#region").change(function() {
        $("#region option:selected").each(function() {
            elegido = $(this).val();
            // console.log(elegido);
            $.post("ajaxListaComuna.php", { elegido: elegido }, function(data) {
                $("#comuna").html(data);
            });
        });
    })
    //fin llenar comuna

    //verifico si hizo check 
    $("#web").click(function() {
        if($("#web:checked").length==1){
            seleccion+=1;
        }else{
            seleccion-=1;
        }
    })
    //verifico si hizo check 
    $("#tv").click(function() {
        if($("#tv:checked").length==1){
            seleccion+=1;
        }else{
            seleccion-=1;
        }
    })
    //verifico si hizo check 
    $("#redes").click(function() {
        if($("#redes:checked").length==1){
            seleccion+=1;
        }else{
            seleccion-=1;
        }
    })
    //verifico si hizo check 
    $("#amigo").click(function() {
        if($("#amigo:checked").length==1){
            seleccion+=1;
        }else{
            seleccion-=1;
        }
    })

    //llenar cbox regiones
    $.ajax({
        type:'POST',
        url: 'ajaxListaCandidato.php',
        data: {'peticion:':'cargar_listas'}
    })
    .done(function(listas_rep){
        $('#candidato').html(listas_rep);
    })
    .fail(function(){
        alert('Hubo un error.');
    })
    //fin llenar region

    // VALIDAR RUT
    let Fn = {
    	// Valida el rut con su cadena completa "XXXXXXXX-X"
    	validaRut : function (rutCompleto) {
    		rutCompleto = rutCompleto.replace("‐","-");
    		if (!/^[0-9]+[-|‐]{1}[0-9kK]{1}$/.test( rutCompleto ))
    			return false;
    		var tmp 	= rutCompleto.split('-');
    		var digv	= tmp[1];
    		var rut 	= tmp[0];
    		if ( digv == 'K' ) digv = 'k' ;

    		return (Fn.dv(rut) == digv );
    	},
    	dv : function(T){
    		var M=0,S=1;
    		for(;T;T=Math.floor(T/10))
    			S=(S+T%10*(9-M++%6))%11;
    		return S?S-1:'k';
    	}
    };
    // FIN VALIDA RUT

    $('#btnVotar').click(function(e){
        e.preventDefault();
        nombre=document.getElementById('nombre').value;
        alias=document.getElementById('alias').value;
        rut=document.getElementById('rut').value;
        correo=document.getElementById('correo').value;
        region = $('#region option:selected').val();
        comuna = $('#comuna option:selected').val();
        candidato = $('#candidato option:selected').val();
        
        //validaciones
        if(nombre==''){
            alert("INGRESE SU NOMBRE");
            return;
        }
        //validacion de solo letras y numeros alias
        var letras = /^([a-zA-Z0-9_-]){5,30}$/;
        if(!letras.test(alias)){
            alert("SU ALIAS DEBE SER ALFANUMERICO Y MAYOR A 5 CARACTERES");
            return;
        }
        //validacion alias
        if (alias==''){
    		alert('DEBE INGRESAR UN ALIAS');
            return;
    	}
        //validacion rut
        if (rut==''){
    		alert('DEBE INGRESAR UN RUT');
            return;
    	}
        //validacion rut
        if (!Fn.validaRut($("#rut").val())){
    		alert('DEBE INGRESAR UN RUT VALIDO');
            return;
    	}
        //validacion correo
        if (!/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/.test(correo)) {
            alert('DEBE INGRESAR UN CORREO VALIDO');
            return;
        }
        //validacion region
        if(region==0){
            alert('DEBE SELECCIONAR UNA REGION');
            return;
        }
        //validacion comuna
        if(comuna==0){
            alert('DEBE SELECCIONAR UNA COMUNA');
            return;
        }
        //validacion candidato
        if(candidato==0){
            alert('DEBE SELECCIONAR UN CANDIDATO');
            return;
        }
        //validacion correo
        if (correo==''){
    		alert('DEBE INGRESAR UN CORREO');
            return;
    	}
        //validacion seleccion
        if(seleccion<2){
            alert("DEBE SELECCIONAR POR LO MENOS 2 OPCIONES EN COMO SE ENTERO DE NOSOTROS");
            return;
        }

        //capturo seleccion
        if($("#amigo:checked").length==1){
            amigo=1;
        }else{
            amigo=0;
        }
        if($("#redes:checked").length==1){
            redes=1;
        }else{
            redes=0;
        }
        if($("#tv:checked").length==1){
            tv=1;
        }else{
            tv=0;
        }
        if($("#web:checked").length==1){
            web=1;
        }else{
            web=0;
        }
        // ARRAY P/ ENVIAR PARAMETROS
        var params = {
            'nombre': nombre,
            'alias' : alias,
            'rut' : rut,
            'correo' : correo,
            'region' : region,
            'comuna' : comuna,
            'candidato' : candidato,
            'web' : web,
            'tv' : tv,
            'redes' : redes,
            'amigo' : amigo
        };
        // FICHERO AJAX
        $.ajax({
            url: "ajaxAgregarVotacion.php",
            method: "POST",
            data: params,
            dataType: "JSON",
            success: function(data) {
                if(data.validar==1){
                    alert("RUT YA REGISTRA VOTACION");
                }else if(data.validar==2){
                    alert("VOTACION REGISTRADA EXITOSAMENTE");
                    document.getElementById("formulario").reset();
                }else if(data.validar==3){
                    alert("ERROR AL INGRESAR VOTACION");
                    document.getElementById("formulario").reset();
                }
            }
        });

    });

  

});