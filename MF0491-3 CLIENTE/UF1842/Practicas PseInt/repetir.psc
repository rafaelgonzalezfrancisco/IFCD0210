Algoritmo alumno
	
	// dato de entrada
	
	nota <- 0;
	respuesta ='';
	
	
	Repetir
		
	Escribir "inserte una nota: ";
	Leer nota;
	si nota < 0 o nota > 10 Entonces
		imprimir "error el valor entre 0 y 10";
	FinSi
	
	si  nota >=5 y nota <=10 Entonces
		imprimir "Estas aprobado";
	SiNo
		si nota >= 0 y nota <= 5 entonces
		imprimir "estas suspendido";
		finsi
	FinSi
	
	escribir "Desea continuar con las notas: (si/no)";
	leer respuesta
	
	Hasta Que respuesta = "no";
	
FinAlgoritmo
