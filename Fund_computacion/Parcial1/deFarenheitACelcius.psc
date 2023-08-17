//Punto 6 Parcial
Algoritmo deFarenheitACelcius
	Escribir "Ingrese la temperatura en Farenheir: "
	Leer tempFarenheit 
	tempCel <- (5/9)*(tempFarenheit - 32)
	
	Escribir "Temperatura en celcius: ", tempCel
	Si tempCel<4
		Escribir "Temperatura: Congelada"
	SiNo
		Si tempCel < 20
			Escribir "Temperatura: Fría"
		SiNo
			Si tempCel < 30
				Escribir "Temperatura: Ambiente"
			SiNo
				Si tempCel < 38
					Escribir "Temperatura: Corporal Humano"
				SiNo 
					Escribir "Temperatura: Muy Caliente"
				FinSi
			FinSi
		FinSi		
	FinSi
FinAlgoritmo
