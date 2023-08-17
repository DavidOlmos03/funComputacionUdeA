//16 puntos. Construya el pseudocodigo y el diagrama de flujo que reciba un n  ? umero entero y lo convierta en 
//numero binario de 8 bits sin signo. Al final se debe mostrar en pantalla el n  ? umero original y su correspon- 
//diente binario.

Algoritmo DeEnteroAbinario
	Escribir "Este programa convierte el Z ingresado en binario, por medio de una cadena de caracteres"
				
	Escribir "Introduzca un número entero: "
	Leer numIngresado
	fase = numIngresado
	
	mientras fase  > 1
		si  fase mod 2 == 0
			numBinario = "0" + numBinario
		SiNo
			numBinario = "1"+numBinario
			fase = fase - 1
		FinSi
		fase = fase/2
	FinMientras
	
	Escribir "1"+numBinario
	
FinAlgoritmo

//Hay forma para que no quede como una cadena si no como un numero, multiplicando(o dividiendo) por 10 a medida que vaya desglozando o componiendo el numero