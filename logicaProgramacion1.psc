Algoritmo logicaProgramacion1
	Definir num1, num2, num3 Como Entero
	
	Escribir "Digite el primer número"
	Leer num1
	
	Escribir "Digite el segundo número"
	Leer num2
	
	Escribir "Digite el tercer número"
	Leer num3
	
	
	Si num1 > num2 y num1>num3 Entonces
		si num2>num3
			Escribir "El orden ascedente es: " num1 ", " num2 ", " num3
			Escribir "El orden descendente es: " num3 ", " num2 ", " num1
		SiNo
			Escribir "El orden ascedente es: " num1 ", " num3 ", " num2
			Escribir "El orden descendente es: " num2 ", " num3 ", " num1
		FinSi
	FinSi
	Si num2>=num1 y num2>=num3 Entonces
		si num1>=num3
			Escribir "El orden ascedente es: " num2 ", " num1 ", " num3
			Escribir "El orden descendente es: " num3 ", " num1 ", " num2
		SiNo
			Escribir "El orden ascedente es: " num2 ", " num3 ", " num1
			Escribir "El orden descendente es: " num1 ", " num3 ", " num2
		FinSi
	FinSi
	Si num3>=num1 y num3>num2 Entonces
		si num1>num2
			Escribir "El orden ascedente es: " num3 ", " num1 ", " num2
			Escribir "El orden descendente es: " num2 ", " num1 ", " num3
		SiNo
			Escribir "El orden ascedente es: " num3 ", " num2 ", " num1
			Escribir "El orden descendente es: " num1 ", " num2 ", " num3
		FinSi
	FinSi
	
	Si num1=num2 y num2=num3 Entonces
		Escribir "Todos los números iguales"
	FinSi
	
	
	
FinAlgoritmo
