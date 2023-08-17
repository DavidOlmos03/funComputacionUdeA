Algoritmo DeEnteroAbonario2
	Escribir "Este programa convierte el Z ingresado en binario"
	Escribir "Introduzca un número entero: "
	Leer N
	binario = 0
	binarioTemp = 0
	cont = 0
	tempN <- N
	Mientras tempN > 0 Hacer
		Si tempN mod 2 ==0
			binario = binario/10
		SiNo
			binario = binario/10 + 1 
		FinSi
		tempN <- trunc(tempN/2)
		cont = cont + 1
	FinMientras
	Escribir "El número " N " en binario es " binario*10^(cont-1)
FinAlgoritmo
