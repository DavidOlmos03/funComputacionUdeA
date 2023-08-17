//5.20 puntos. Consulte y construya el algoritmo correspondiente para desarrollar "El juego de la vida" para
//			un ecosistema de celulas. El algoritmo debe generar aleatoriamente las posiciones iniciales de las c  ? elulas  ?
//				y debe imprimir en pantalla, en cada instante de tiempo, el estado actual de automata celular. Se puede  ?
//			realizar una consulta inicial de este juego en https://es.wikipedia.org/wiki/Juego de la vida.
Algoritmo juegoVida
	Dimension tablero[10,10]
	Dimension nuevoTablero[10,10]
	Dimension vecindario[8,2] 
	vecindario[1,1]= -1 
	vecindario[1,2]= -1
	vecindario[2,1]= -1
	vecindario[2,2]= 0 
	vecindario[3,1]=-1 
	vecindario[3,2]=1 
	vecindario[4,1]=0 
	vecindario[4,2]=-1
	vecindario[5,1]=0 
	vecindario[5,2]=1 
	vecindario[6,1]=1 
	vecindario[6,2]=-1 
	vecindario[7,1]=1 
	vecindario[7,2]=0
	vecindario[8,1]=1 
	vecindario[8,2]=1 
	
		//Tablero inicial
	Para i = 1 Hasta 10 Hacer
		Para j = 1 Hasta 10 Hacer
				tablero[i,j] <- Azar(2)
			FinPara
		FinPara
		
		cadena = ""
		//Bucle del juego
		Para k = 0 Hasta 5 Hacer
			//Se muestra el tablero actual
			Escribir "***********GENERACIÓN***********", k
			Para i = 1 Hasta 10  Hacer
				Para j = 1 Hasta 10 Hacer
					Si tablero[i,j] = 1 Entonces
						cadena = cadena + " 1 "
					Sino
						cadena = cadena +" 0 "
					FinSi
				FinPara
				Escribir  cadena;
				cadena = ""
			FinPara
			
			//Se calcula el nuevo estado del tablero revisando la cantidad de celulas vivas en el veccindario de cada celular
			//y se aplican los criterios del juego de la vida, para determinar si la celula sigue viviendo, muere o revive
			Para i = 1 Hasta 10 Hacer
				Para j = 1 Hasta 10 Hacer
					//Calculo de celulas vecinas vivas
					vivas <- 0
					Para n = 1 Hasta 8 Hacer
						fila <- i + vecindario[n,1]
						col <- j + vecindario[n,2]
						Si fila >= 1 Y fila <= 10 Y col >= 1 Y col <= 10 Entonces
							Si tablero[fila,col] = 1 Entonces
								vivas <- vivas + 1
							FinSi
						FinSi
					FinPara
					
					//Se aplican las reglas del juego
					Si tablero[i,j] == 1 Entonces
						Si vivas == 2 O vivas == 3 Entonces
							nuevoTablero[i,j] <- 1 //en este caso la celula sigue viviendo
						Sino
							nuevoTablero[i,j] <- 0 //En este caso muere (vivas = 1 0 vivas>3)
						FinSi
					Sino						//Cuando tablero[i,j] == 0 ie la celula esta muerta
						Si vivas == 3 Entonces			
							nuevoTablero[i,j] <- 1  //Si tiene 3 vecinas vivas, revive
						Sino
							nuevoTablero[i,j] <- 0   //Si no tiene 3 vecinas vivas, permanece muerta
						FinSi
					FinSi
				FinPara
			FinPara
			
			//Actualizar el tablero
			Para i = 1 Hasta 10 Hacer
				Para j = 1 Hasta 10 Hacer
					tablero[i,j] <- nuevoTablero[i,j]
				FinPara
			FinPara
		FinPara
FinAlgoritmo
