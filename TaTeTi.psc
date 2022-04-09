Proceso TaTeTi
	definir i,n,jugador Como Entero;
	definir tablero Como Caracter;
	Dimension tablero[9];
	Para i<- 0 Hasta 9-1 Con Paso 1 Hacer
		tablero(i) <- " ";
	FinPara
	i<-1;
	jugador<- azar(2)+1;
	
mientras i <= 9 Hacer
	Escribir "Ingresa una posicion jugador ", jugador;
	Escribir " ";
	Escribir  " Posiciones","               ","Tablero de juego"; 
	Escribir  "------------","             ","------------------";
	Escribir "| 0 | 1 | 2 |","     ===     "," | ",tablero(0)," | ",tablero(1)," | ",tablero(2)," | ";
	Escribir "| 3 | 4 | 5 |","     ===     "," | ",tablero(3)," | ",tablero(4)," | ",tablero(5)," | ";
	Escribir "| 6 | 7 | 8 |","     ===     "," | ",tablero(6)," | ",tablero(7)," | ",tablero(8)," | ";
	leer n;
	si n >= 0 y n <= 9 Entonces
		si jugador == 1 Entonces
			si tablero(n) == " " Entonces
				tablero(n) <- "X";
				jugador <- 2;
				//Analizamos si el jugador 1 gano la partida
				//Posiciones de X en forma horizontal
				si tablero(0)= "X" y tablero(1)= "X" y tablero(2)= "X" Entonces
					Escribir "El jugador 1 ha ganado la partida";
					i<-9;
				FinSi
				si tablero(3)= "X" y tablero(4)= "X" y tablero(5)= "X" Entonces
					Escribir "El jugador 1 ha ganado la partida";
					i<-9;
				FinSi
				si tablero(6)= "X" y tablero(7)= "X" y tablero(8)= "X" Entonces
					Escribir "El jugador 1 ha ganado la partida";
					i<-9;
				FinSi
				//Posiciones verticales
				si tablero(0)= "X" y tablero(3)= "X" y tablero(6)= "X" Entonces
					Escribir "El jugador 1 ha ganado la partida";
					i<-9;
				FinSi
				si tablero(1)= "X" y tablero(4)= "X" y tablero(7)= "X" Entonces
					Escribir "El jugador 1 ha ganado la partida";
					i<-9;
				FinSi
				si tablero(2)= "X" y tablero(5)= "X" y tablero(8)= "X" Entonces
					Escribir "El jugador 1 ha ganado la partida";
					i<-9;
				FinSi
				//Posiciones inclinadas
				si tablero(0)= "X" y tablero(4)= "X" y tablero(8)= "X" Entonces
					Escribir "El jugador 1 ha ganado la partida";
					i<-9;
				FinSi
				si tablero(6)= "X" y tablero(4)= "X" y tablero(2)= "X" Entonces
					Escribir "El jugador 1 ha ganado la partida";
					i<-9;
				FinSi
			sino 
				Escribir "Ese lugar ya esta ocupado";
			FinSi
		SiNo
			si tablero(n)== " " Entonces
				tablero(n)<- "O";
				jugador<- 1;
				si tablero(0)= "O" y tablero(1)= "O" y tablero(2)= "O" Entonces
					Escribir "El jugador 2 ha ganado la partida";
					i<-9;
				FinSi
				si tablero(3)= "O" y tablero(4)= "O" y tablero(5)= "O" Entonces
					Escribir "El jugador 2 ha ganado la partida";
					i<-9;
				FinSi
				si tablero(6)= "O" y tablero(7)= "O" y tablero(8)= "O" Entonces
					Escribir "El jugador 2 ha ganado la partida";
					i<-9;
				FinSi
				//Posiciones verticales
				si tablero(0)= "O" y tablero(3)= "O" y tablero(6)= "O" Entonces
					Escribir "El jugador 2 ha ganado la partida";
					i<-9;
				FinSi
				si tablero(1)= "O" y tablero(4)= "O" y tablero(7)= "O" Entonces
					Escribir "El jugador 2 ha ganado la partida";
					i<-9;
				FinSi
				si tablero(2)= "O" y tablero(5)= "O" y tablero(8)= "O" Entonces
					Escribir "El jugador 2 ha ganado la partida";
					i<-9;
				FinSi
				//Posiciones inclinadas
				si tablero(0)= "O" y tablero(4)= "O" y tablero(8)= "O" Entonces
					Escribir "El jugador 2 ha ganado la partida";
					i<-9;
				FinSi
				si tablero(6)= "O" y tablero(4)= "O" y tablero(2)= "O" Entonces
					Escribir "El jugador 2 ha ganado la partida";
					i<-9;
				FinSi
			SiNo
				Escribir "Esa Lugar ya esta ocupado";
			FinSi
		FinSi
	SiNo
		Escribir "Posicion incorrecta";
	FinSi
	//Si se completan todas las posiciones y no se detecta ganador entonces:
	Si i > 9 Entonces
		Escribir "Los jugadores empatan";
	FinSi
	i<- i + 1;
FinMientras
Escribir "| 0 | 1 | 2 |","     ===     "," | ",tablero(0)," | ",tablero(1)," | ",tablero(2)," | ";
Escribir "| 3 | 4 | 5 |","     ===     "," | ",tablero(3)," | ",tablero(4)," | ",tablero(5)," | ";
Escribir "| 6 | 7 | 8 |","     ===     "," | ",tablero(6)," | ",tablero(7)," | ",tablero(8)," | ";
FinProceso
