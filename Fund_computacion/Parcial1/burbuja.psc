//4. Consulte el metodo de la burbuja para ordenar, de menor a mayor, elementos de una lista de  ?
//numeros. Construya el algoritmo que implemente este m  ? etodo de la burbuja para un conjunto de  ? n numeros.  ?
//	n debe ser ingresado por el usuario y los numeros deben ser le  ?  ??dos desde un archivo. Imprima los numeros  ?
//ordenados en un archivo.

Algoritmo bubbleSort
	Escribir "Ingrese la cantidad de números que quiere leer: "
	Leer cantAleer
	Dimension listNumeros[cantAleer]
	
	//Imprimiendo los numeros uno a uno en desorden
	Escribir "Números en desorden: "
	Para i = 1 hasta cantAleer
		listNumeros[i] = Aleatorio(-50,50)
		Escribir  listNumeros[i]
	FinPara
	
	//Ciclo para ordenar los números del arreglo
	Para i = 1 hasta cantAleer -1
		Para j = 1 Hasta  cantAleer - n - 1
			Si listNumeros[j] > listNumeros[j+1]
			fase = listNumeros[j] 
			listNumeros[j] = listNumeros[j+1]
			listNumeros[j+1] = fase
			FinSi
		FinPara

	FinPara
	
	//Imprimiendo los numeros uno a uno en orden
	Escribir "Números en orden: "
	Para i = 1 hasta cantAleer
		Escribir  listNumeros[i]
	FinPara
	
FinAlgoritmo
