Algoritmo binarioADecimal
	Escribir "Ingrese su n�mero en binario"
	Leer N
	tempN <- N
	i <- 0 
	sum <- 0
	Mientras tempN > 0 Hacer
		digito <- tempN%10
		sum <- sum + digito*2^i
		tempN <- trunc(tempN/10)
		i <- i +1 
	FinMientras
	Escribir "El n�mero " N " en decimal es: " sum 
FinAlgoritmo
