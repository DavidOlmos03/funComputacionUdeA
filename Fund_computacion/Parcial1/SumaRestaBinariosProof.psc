Funcion enteroRetornoCadena <- ConvertirABase2(decimal)  //Esta función resibe un numero en base 10 y lo transforma a base 2  	
	Si decimal < 0 O decimal > 255 Entonces
		Escribir "El número ingresado está fuera de rango."
	Sino
		binario <- "" // cadena vacía para almacenar el número binario
		Para i <- 1 Hasta 8 Hacer
			residuo <- decimal % 2
			binario <- Concatenar(ConvertirATexto(residuo),binario)
			decimal <- trunc(decimal / 2)
		FinPara
		enteroRetornoCadena <- binario
	FinSi
FinFuncion

Funcion enteroRetorno <- ConvertirABase10(enteroBinario)  	//Esta función resibe un numero en base 2 y lo transforma a base 10  	
	tempN <- enteroBinario
	i <- 0
	sum <- 0
	Mientras  tempN > 0 Hacer
		digito <- tempN%10
		sum <- sum +  digito*2^i
		tempN <- trunc(tempN/10)
		i = i+1
	FinMientras
	enteroRetorno <- sum
FinFuncion

Algoritmo SumaRestaBinarios
	Escribir "Ingrese el primer número binario de 8 bits:"
	Leer binario1
	Escribir "Ingrese el segundo número binario de 8 bits:"
	Leer binario2
	
	// Conversión de cadenas binarias a números enteros
	numero1 <- ConvertirABase10(binario1)
	numero2 <- ConvertirABase10(binario2)
	
	Escribir numero1
	// Suma de números binarios
	suma <- numero1 + numero2
	
	// Resta de números binarios
	resta <- numero1 - numero2
	
	//Signacion a los resultados decimales
	sumaDecimal = suma
	restaDecimal = resta
	
	// Conversión de números enteros a cadenas binarias de 8 bits
	binarioSuma <- ConvertirABase2(suma)
	binarioResta <- ConvertirABase2(resta)
	
	// Mostrar resultados
	Escribir "La suma binaria es:", binarioSuma, " que corresponde al número decimal: ",sumaDecimal
	Escribir "La resta binaria es:", binarioResta, " que corresponde al número decimal: ",restaDecimal
FinAlgoritmo
