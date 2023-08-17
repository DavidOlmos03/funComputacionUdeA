Funcion enteroRetornoCadena <- ConvertirABase2(decimal)  //Esta funci�n resibe un numero en base 10 y lo transforma a base 2  	
	Si decimal < 0 O decimal > 255 Entonces
		Escribir "El n�mero ingresado est� fuera de rango."
	Sino
		binario <- "" // cadena vac�a para almacenar el n�mero binario
		Para i <- 1 Hasta 8 Hacer
			residuo <- decimal % 2
			binario <- Concatenar(ConvertirATexto(residuo),binario)
			decimal <- trunc(decimal / 2)
		FinPara
		enteroRetornoCadena <- binario
	FinSi
FinFuncion

Funcion enteroRetorno <- ConvertirABase10(enteroBinario)  	//Esta funci�n resibe un numero en base 2 y lo transforma a base 10  	
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
	Escribir "Ingrese el primer n�mero binario de 8 bits:"
	Leer binario1
	Escribir "Ingrese el segundo n�mero binario de 8 bits:"
	Leer binario2
	
	// Conversi�n de cadenas binarias a n�meros enteros
	numero1 <- ConvertirABase10(binario1)
	numero2 <- ConvertirABase10(binario2)
	
	Escribir numero1
	// Suma de n�meros binarios
	suma <- numero1 + numero2
	
	// Resta de n�meros binarios
	resta <- numero1 - numero2
	
	//Signacion a los resultados decimales
	sumaDecimal = suma
	restaDecimal = resta
	
	// Conversi�n de n�meros enteros a cadenas binarias de 8 bits
	binarioSuma <- ConvertirABase2(suma)
	binarioResta <- ConvertirABase2(resta)
	
	// Mostrar resultados
	Escribir "La suma binaria es:", binarioSuma, " que corresponde al n�mero decimal: ",sumaDecimal
	Escribir "La resta binaria es:", binarioResta, " que corresponde al n�mero decimal: ",restaDecimal
FinAlgoritmo
