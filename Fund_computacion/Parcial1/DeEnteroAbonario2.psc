Algoritmo DecimalABinario
	Escribir "Ingrese un número decimal entre 0 y 255:"
	Leer decimal
	Si decimal < 0 O decimal > 255 Entonces
		Escribir "El número ingresado está fuera de rango."
	Sino
		binario <- "" // cadena vacía para almacenar el número binario
		Para i <- 1 Hasta 8 Con Paso 1 Hacer
			residuo <- decimal % 2
			binario <- Concatenar(ConvertirATexto(residuo),binario)
			decimal <- trunc(decimal / 2)
		FinPara
		Escribir "El número ", decimal, "es en binario de 8 bits:", binario
	FinSi
FinAlgoritmo