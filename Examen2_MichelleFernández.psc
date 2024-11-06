Algoritmo Examen2_MichelleFernández
	//simular un cajero automático
	definir usuario, contrasenna, array, transac como caracter
	definir numeroIntentos, eleccion, canti, temp Como Entero
	definir montoDeposito, montoSacar, saldo Como entero
	definir menu Como Logico
	
	
	Dimension array[2]
	array[0]= "MichelleFernandez28"
	array[1]= "Persona123"
	
	//canti = 2
	Dimension transac[1]
	transac[0] = "0"
	//transac[0] = 0
	//transac[1] = 0
	
	Dimension saldo[1]
	saldo[0] = 3000
	
	
	menu = Falso
	numeroIntentos = 1
	montoSacar = 0
	
	
	Para X = numeroIntentos Hasta 6 Con Paso 1 Hacer
		
		Escribir "Ingrese su nombre de usuario"
		Leer usuario
		Escribir "Ingrese su contraseña"
		leer contrasenna
		
		
		Si usuario <> array[0] y contrasenna <> array[1] Entonces
			
			escribir "*******USUARIO O CONTRASEÑA INCORRECTOS, INTENTELO DE NUEVO********" , "Número de intento: " numeroIntentos
			si numeroIntentos > 6 Entonces
				Escribir "Lo sentimos, ha sobrepasado el número de intentos"
				Escribir " "
				Escribir "*********El sistema se ha bloqueado***************"
				
			FinSi
		Sino 
			Repetir
				escribir  "*********** BIENVENIDO AL SISTEMA ************"
				escribir " "
				Escribir "A continuación se le muestra en pantalla el menú para que acceda a lo que desea"
				Escribir " "
				Escribir "1- Depositar dinero a la cuenta"
				Escribir "2- Sacar dinero de la cuenta"
				Escribir "3- Ver saldo"
				Escribir "4- Salir"
				Leer eleccion
				
				Segun eleccion Hacer
					1: menu = Verdadero
						Escribir "Digite el monto por depositar"
						Leer montoDeposito
						Si transac[0] = "0" Entonces
							Si montoDeposito >= 10000 Entonces
								montoDeposito = montoDeposito - (montoDeposito * 0.01)
								saldo[0] = saldo[0] + montoDeposito
								transac[0] = "Deposito de: " + ConvertirATexto(montoDeposito) + " "
								escribir "**** DEPOSITO REALIZADO******"
								escribir transac[0]
								escribir "*****************************"
								
								
								
							SiNo 
								saldo[0] = saldo[0] + montoDeposito
								transac[0] = "Deposito de: " + ConvertirATexto(montoDeposito) + " "
								escribir "**** DEPOSITO REALIZADO******"
								escribir transac[0]
								escribir "*****************************"
							Fin Si
						SiNo
							Si montoDeposito >= 10000 Entonces
								montoDeposito = montoDeposito - (montoDeposito * 0.01)
								saldo[0] = saldo[0] + montoDeposito
								transac[0] = transac[0] + "Deposito de: "  + ConvertirATexto(montoDeposito) + " "
								escribir "**** DEPOSITO REALIZADO******"
								escribir transac[0]
								escribir "*****************************"
								
								
							SiNo 
								saldo[0] = saldo[0] + montoDeposito
								transac[0] =transac[0]+ "Deposito de: " + ConvertirATexto(montoDeposito) + " "
								escribir "**** DEPOSITO REALIZADO******"
								escribir transac[0]
								escribir "*****************************"
								
							Fin Si
						Fin Si
						
						
					2: menu = Verdadero
						Escribir "Ingrese el monto que desea retirar, Recuerde que solo se permite multiplos de 1000"
						leer montoSacar
						Si montoSacar mod 1000 <> 0 Entonces
							Escribir "Lo sentimos, solo se permiten múltiplos de 1000. Intente de nuevo."
						SiNo
							Si montoSacar > saldo[0] Entonces
								Escribir "Lo sentimos, su saldo es insuficiente"
							SiNo
								Escribir "******* Su transacción se ha realizado con éxito **********" 
								
								transac[0] = transac[0] + "Retiro de: " + ConvertirATexto(montoSacar) + " "
								Escribir "Su saldo disponible es: " saldo[0] - montoSacar
								saldo[0] = saldo[0] - montoSacar
								Escribir "***********************************************************"
							Fin Si
						Fin Si
					3: menu = Verdadero
						escribir "***************************"
						Escribir "Su saldo actual es de: " saldo[0]
						Escribir "Su historial de transacciones es: "
						Escribir transac[0]
						escribir "***************************"
					4: menu = falso
						Escribir "Ha salido del sistema"
						numeroIntentos = 1
					De Otro Modo: menu = Verdadero
						escribir "Lo sentimos debe seleccionar uno de los números dados"
				Fin Segun
			Hasta Que menu = falso
			
		FinSi
		numeroIntentos = numeroIntentos + 1
	Fin Para
FinAlgoritmo
