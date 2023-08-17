//3. Construya un algoritmo que dados los coeficientes a, b y c de una ecuacion cuadr  ? atica de la  ?
//forma ax2 + bx + c = 0, entregue la solucion de la ecuaci  ? on usando la formula general. El algoritmo  ?
	//debe evaluar el discriminante de la ecuacion y s  ? olo debe imprimir la soluci  ? on cuando el conjunto soluci  ? on ?
	//numeros reales, en caso de ser una soluci  ? on imaginaria, s  ? olo debe informarlo al usuario. los coeficientes  ?
	//deben ser ingresados por el usuario.
Algoritmo Cuadratica
	Escribir "Ingrese coeficiente #1: "
	Leer a
	Escribir "Ingrese coeficiente #2: "
	Leer b
	Escribir "Ingrese coeficiente #3: "
	Leer c
	
	Si b^2 - 4*a*c < 0
		Escribir "La ecuacion ingresada no tiene raices reales"
	SiNo
		solution1 = (-b + (b^2 - 4*a*c)^(1/2))/(2*a) 
		solution2 = (-b - (b^2 - 4*a*c)^(1/2))/(2*a) 
		Escribir "Las soluciones de la ecuación: " a "x^2+" b "x+" c  " son: "
		Escribir "x1 = " solution1
		Escribir "x2 = " solution2
		
	FinSi
FinAlgoritmo
