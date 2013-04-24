$(document).ready(function(){


	// función para validar campos numericos

	function validarNum(valor){
			var tamanio = (valor.length);
			for (j=0; j<=(tamanio-1); j++){
				var v = parseInt(valor[j]);
				if (isNaN(v)){
					var z = "false";
					break;
				} else{
					var z = "true";
				}
			}
		return z;
	}
		
	// función para envíar alert's
		
	function aviso(campo){
		var msg = campo+".focus();"+campo+".css({'border' : '1px solid red', 'padding': '2px'})";
		eval(msg);
	}
	
	// Estilos por defecto en los campos
		
	$('input[type|="text"]').keyup(function(){
		$(this).css({'border' : '1px inset threedface',  'padding' : '1px'});
	});

	$('select').change(function(){
		$(this).css({'border' : '1px inset threedface',  'padding' : '1px'});
	});

	////////////////////////////// 


	$("#btnEnv").click(function(){

		var valido = true;

		var nombre = $("#name").val();
		var apPat = $("#apPat").val();
		var apMat = $("#apMat").val();
		var numCuenta = $("#cuenta").val();
		var email = $("#email").val();
		var tel = $("#tel").val();
		var cel = $("#cel").val();
		var curso = $("#curso").val();

		// validación de nombre
		if (nombre == ""){

			alert("Debes escribir tu nombre");
			aviso("$('#name')");
			valido = false;
			return false;

		}

		// validación de apellidos

		if (apPat == ""){

			alert("Debes escribir tu apellido paterno");
			aviso("$('#apPat')");
			valido = false;
			return false;

		}

		if (apMat == ""){

			alert("Debes escribir tu apellido materno");
			aviso("$('#apMat')");
			valido = false;
			return false;

		}

		// validación de número de cuenta
		if (numCuenta == ""){

			alert("Debes escribir tu numero de cuenta");
			aviso("$('#cuenta')");
			valido = false;
			return false;

		}

		if (validarNum(numCuenta)=="false"){

			alert("Deben ser valores num\u00e9ricos");
			aviso("$('#cuenta')");
			$('#cuenta').attr('value','');
			return false;

		}

		// validación de email

		if (email == ""){

			alert("Debes escribir tu correo electronico");
			aviso("$('#email')");
			valido = false;
			return false;

		} 

		// validación de telefonos

		if (tel == ""){

			alert("Debes escribir tu numero de telefono");
			aviso("$('#tel')");
			valido = false;
			return false;

		}

		if (validarNum(tel)=="false"){

			alert("Deben ser valores num\u00e9ricos");
			aviso("$('#tel')");
			$('#tel').attr('value','');
			return false;

		}

		if (cel == ""){

			alert("Debes escribir tu numero celular");
			aviso("$('#cel')");
			valido = false;
			return false;

		}

		if (validarNum(cel)=="false"){

			alert("Deben ser valores num\u00e9ricos");
			aviso("$('#cel')");
			$('#cel').attr('value','');
			return false;

		}

		//validando la seleccion del curso

		if (curso == "--"){

			alert("Debes seleccionar el curso que te interesa");
			aviso("$('#curso')");
			valido = false;
			return false;

		}

		// Se envían los datos

		if (valido == true){

			alert("Todo bien");

			/*$.ajax({
				type: "POST",
				url: "funciones/detProd.php",
				data: {
					ciudad : ciudad
				},
				success: function(data) {
					
					$("#detProd").html(data);
				}
			});*/

		}		
		
	});

});