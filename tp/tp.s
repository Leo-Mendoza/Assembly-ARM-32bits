.data

horca1: .asciz "____________________________________________________________________\n|1                                                                 |\n|2                 Ahorcado / Orga1: Grupo16                       |\n____________________________________________________________________\n|4 								   |\n|5		   ___________________                             |\n|6                 |/                 |                            |\n|7                 |                  |                            |\n|8                 |                                        	   |\n|9                 |                                               |\n|10                |                                               |\n|11                |                                               |\n|12                |                                               |\n|13                |                                               |\n|14                |                                               |\n|15                |                                               |\n|16                |                                               |\n|17                |                                               |\n|18                |                                               |\n|19                |                                               |\n|20      ////////////////////////////////////////////////	   |\n____________________________________________________________________\n|             							   |\n|       	     @    @    @    @    @          		   |\n____________________________________________________________________\n\n"
horca1Len = . - horca1

horcaJugador: .asciz "____________________________________________________________________\n|1                                                                 |\n|2                 Ahorcado / Orga1: Grupo16                       |\n____________________________________________________________________\n|4 								   |\n|5		   ___________________                             |\n|6                 |/                 |                            |\n|7                 |                  |                            |\n|8                 |                                        	   |\n|9                 |                                               |\n|10                |                                               |\n|11                |                                               |\n|12                |                                               |\n|13                |                                               |\n|14                |                                               |\n|15                |                                               |\n|16                |                                               |\n|17                |                                               |\n|18                |                                               |\n|19                |                                               |\n|20      ////////////////////////////////////////////////	   |\n____________________________________________________________________\n|             							   |\n|       	     @    @    @    @    @          		   |\n____________________________________________________________________\n\n"
horcaJugadorLen = . - horcaJugador


/*----------------------------------MENSAJES JUEGO-------------------------------------------*/

bienvenidaMsj: .asciz "Hola, bienvenido al juego, del ahorcado, por favor ingresa tu nombre para jugar: "
bienvenidaMsjLen = . - bienvenidaMsj

bienvenidaMsj2: .asciz "\nLas reglas son simples, debes adivinar todas las letras de la palabra, \nsi fallas 6 veces estaras AHORCADO!!\n\n"
bienvenidaMsj2Len = . - bienvenidaMsj2

despedidaMsj1: .asciz "\n\nPeriste todas tus vidas, estas AHORCADO\n\n"
despedidaMsj1Len = . - despedidaMsj1

despedidaMsj2: .asciz "\n\nAdivinaste todas las letras GANASTE!!"
despedidaMsj2Len = . - despedidaMsj2

despedidaMsj3: .asciz "\n\nGracias por jugar!!\n\n"
despedidaMsj3Len = . - despedidaMsj3

opcionIncorrectaMsj: .asciz "\n\nRespuesta invalida, por favor ingresa un valor correcto.\n"
opcionIncorrectaMsjLen = . - opcionIncorrectaMsj

eligeLetra: .asciz "\n\nElige una letra (minusculas) : "
eligeLetraLen = . - eligeLetra

vidasMsj: .asciz "\nVidas: \n"
vidasMsjLen = . - vidasMsj

puntosMsj: .asciz "\nPuntos: \n"
puntosMsjLen = . - puntosMsj

/*----------------------------------MENSAJES JUEGO FIN-------------------------------------------*/

/*----------------------------------SEGUNDA PARTE------------------------------------------------*/


oportunidadMsg: .asciz "\n\nPerdiste todas tus vidas, quieres intentar usar tu pistola y cortar la cuerda? s/n (s = si, n = no): "
oportunidadMsgLen = . - oportunidadMsg

oportunidadFilas: .asciz "\n\nBien, tendras que ingresar las coordenadas X e Y (38-4), comenzaremos con la coordenada X: " @cambiar (4-38) por algo (filas-columnas) despues
oportunidadFilasLen = . - oportunidadFilas

oportunidadColumna: .asciz "\n\nAhora ingresa la coordenada Y: "
oportunidadColumnaLen = . - oportunidadColumna

oportunidadGanado: .asciz "\n\nFelicidades, salvaste al ahorcado, ganaste!!!\n\n" 
oportunidadGanadoLen = . - oportunidadGanado

oportunidadError: .asciz "\n\nNo ingresaste el valor correcto, por favor asegurese de ingresar s si quiere intentar aprovechar la oportunidad de ganar, o n en caso de que no quieras hacerlo: "
oportunidadErrorLen = . - oportunidadError

falloXeY: .asciz "\n\nNo estuviste ni cerca de darle, parece ser que te falta algo de practica, buena suerte la proxima.\n\n"
falloXeYLen = . - falloXeY

falloX: .asciz "\n\nOh, fallaste, por suerte no le diste al ahorcado, aunque no podria saberlo, cerre los ojos por si acaso, lo siento.\n\n" @perdon por el dialogo, pueden cambiarlo si quieren
falloXLen = . - falloX

falloY: .asciz "\n\nUh? fallaste? habra sido el viento? eso estuvo cerca, Probablemente en la siguiente seas capaz de acertar.\n\n"
falloYLen = . - falloY

jugarOtravez: .asciz "\nDeseas volver a jugar?(s/n): "
jugarOtravezLen = . - jugarOtravez

numeroX: .asciz "  "
numeroY: .asciz "  "
confirmacion: .asciz " "

/*----------------------------------VARIABLES JUEGO-------------------------------------------*/

nombre: .space 20
nombreLen= .-nombre

letra_elegida: .asciz " "

continuar_rta: .asciz " "
flag_victoria: .int 0

docPalabras: .asciz "palabras.txt"
palabras: .space 301
palabrasLen = . - palabras

indice_rand: .word 0

word: .space 5	 	@palabra del juego
wordLen = . - word

conPos: .asciz "xxxxx"		@conposicion para obtener las posiciones de las coincidencias
hayCon: .byte 0 			@Flag de aciertos
cant_con: .int 0


puntos: .int 0
vidas: .int 6

/*----------------------------------VARIABLES RANKING--------------------------------------------*/
	
rankfile: .asciz "ultimos.txt"
rankings: .space 69                  @ buffer para leer/escribir el contenido del archivo
ranklen = .-rankings

msgrank: .asciz " _________________________________________\n|                                         |\n|            ULTIMOS JUGADORES            |\n|                                         |\n|                                         |\n|                                         |\n|                                         |\n|                                         |\n|                                         |\n|                                         |\n|                                         |\n+-----------------------------------------+\n"
msgranklen= .-msgrank

ranknombre1: .space 20
ranknombre2: .space 20
ranknombre3: .space 20


puntajes: .asciz "                "
puntajesLen = . - puntajes

/*----------------------------------VARIABLES JUEGO FIN-------------------------------------------*/


.text 

pedir_input:

	.fnstart
	push {lr}
	
	mov r7, #3
	mov r0, #0
	swi 0

	pop {lr}
	bx lr
	.fnend


imprimir:		@imprimir digamos

	.fnstart
	push {lr}
	
	mov r7, #4
	mov r0, #1
	swi 0

	pop {lr}
	bx lr
	.fnend

actualizar_vidas:

	.fnstart
	push {r1, r2, lr}

	ldr r1, = vidasMsj
	ldr r2, = vidas

	ldr r2, [r2]
	add r2, #0x30

	strb r2, [r1, #8]
	
	pop {r1, r2, lr}
	bx lr
	.fnend

actualizar_puntos:

	.fnstart
	push {r1, r2, lr}

	ldr r1, = puntosMsj
	ldr r2, = puntos

	ldr r2, [r2]
	add r2, #0x30

	strb r2, [r1, #9]
	
	pop {r1, r2, lr}
	bx lr
	.fnend

// FUNCIONES PARA GENERAR INDICES AL AZAR

obtener_seed:                    @Esta funcion crea una seed a partir de los ascii del nombre ingresado 

	.fnstart
	push {r0, r1, r2, r3, lr}

 	ldr r0, =nombre          
	ldr r0, [r0]              @agarra el valor de los ascii que forman el nombre del jugador

	mov r1, #200

	udiv r3,r0,r1             @divido por 200 para obtener un entero mas manejable

	ldr r2, =indice_rand
	str r3, [r2]              @guardo el valor obtenido en la variable indice_rand para generar indices aleatorios

	pop {r0, r1, r2, r3, lr}
	bx lr
	.fnend

leer_palabras:

	.fnstart
	push {r0, r1, r2, r3, r7, r8, lr}
	
	mov r7, #5 	      	@ Sys 5 - Buscar en memoria
    	ldr r0, =docPalabras 	@ nombre del archivo
    	mov r1, #2             	@ Permisos de apertura
    	mov r2, #0             	@ Permisos generales, no aplica para un archivo creado
   	swi 0		       	@ interrupcion

	mov r8, r0	       	@ Mover el descriptor a r8	
	ldr r3, =palabrasLen

	mov r7, #3	       	@ Sys 3 - Leer
	mov r0, r8	       	@ Leer el contenido del FileDescriptor
	ldr r1, =palabras 		@cargamos en r1 la lista (ahora mismo vacia)
	mov r2, r3		@largo de la palabra
	swi 0	

	mov r7, #6
	swi 0

	pop {r0, r1, r2, r3, r7, r8, lr}
	bx lr
	.fnend

sortear_palabra:
	.fnstart
	push {r0, r1, r2, r3, r4, r5, r7, lr}
	
	bl generar_indice            @ Genero un indice random para seleccionar palabras


	ldr r0, =palabras           @ Cargo la lista de palabras

	ldr r1, =indice_rand         @ Cargo la direccion del indice
	ldr r1, [r1]                @ Guardo el numero del indice en r1
	
	mov r2, #6              @ 6 es la cantidad de caracteres que se usan para pasar de palabra en palabra (5 caracteres + 1 '\n')
	mul r3, r1, r2          @ Multiplico el indice por 6 asi puedo moverme a la palabra indicada por el indice

	add r0, r0, r3          @ Muevo el puntero r0 a la posición de la palabra seleccionada
	ldr r4, =word            


	mov r5, #5
	bl copy_loop

	pop {r0, r1, r2, r3, r4, r5, r7, lr}
	bx lr
	.fnend

generar_indice:

	.fnstart
 	push {r0, r1, r2}

	mov r0, #1103              @ multiplicador

	ldr r1, =indice_rand
	ldr r1, [r1]               @ Utilizo la variable indice como raiz

	mov r2, #12341             @ incremento
	
	mul r0,r1                  @ multiplico por la raiz y lo guardo en r0
	
	add r0, r2                 @ sumo el incremento a r0
	
	@MODULO 50                calculo el modulo 50 del numero que se genero

	mov r1, #50
    
	udiv r2, r0, r1           @ divide a r0 por 50 y guarda el resultado en r2

	mls r0, r2, r1, r0        @ multiplica r2 por 50 y el resultado resta a r0 y lo guardo en r0

	ldr r1, =indice_rand
	str r0, [r1]              @ guardo el numero como nueva raiz, asi cuando llamen a la funcion devuelta, dara otro numero aleatorio
	
	pop {r0, r1, r2}
	bx lr
	.fnend

copy_loop:
	.fnstart
 	ldrb r6, [r0], #1           @ Cargar byte de palabra y aumentar r0
	strb r6, [r4], #1           @ Almacenar byte en word y aumentar r4
	subs r5, r5, #1             @ Decrementar contador
	bne copy_loop               @ Si no es cero, repetir

	bx lr
	.fnend

//TERMINAN LAS FUNCIONES RANDOM


comprobar_letra: 
	
	.fnstart 
	push {r0, r1, r2, r3, r4, r5, r6, lr}

	@ Actualizamos el flag

	ldr r0, = hayCon
	mov r1, #0
	strb r1, [r0]
	
	ldr r0, = letra_elegida
	ldrb r0, [r0]		@r0 es la letra a comparar
	
	mov r2, #0		@r2 es el indice
		 
	ldr r1, = word		@r1 contiene la direccion de la palabra
	
	ldr r3, = conPos		@ Si hay coincidencias, donde

	b ciclo_comprobar_letra

ciclo_comprobar_letra:

	cmp r2, #5
	beq end_comprobar_letra

	ldrb r4, [r1,r2]
	cmp r4, r0
	beq coincidencia

	add r2, #1
	b ciclo_comprobar_letra

coincidencia:

	@ldrb r5, [r3, r2]
	strb r0, [r3, r2]			@actualizo el donde estan las coincidencias
		
	mov r5, #1
	ldr  r6, = hayCon			@si hay coincidencia hayCon == 1
	strb r5, [r6]

	ldr r6, = cant_con			@ incrementa la cantidad de coincidencias
	ldr r5, [r6]
	add r5, #1
	str r5, [r6]

	add r2, #1 			@aumentamos el indice
	b ciclo_comprobar_letra		@retomamos el ciclo

end_comprobar_letra:
	pop {r0, r1, r2, r3, r4, r5, r6, lr}
	bx lr
	.fnend


resultado_intento: 

	.fnstart
	push {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
	
	ldr r3, = horcaJugador

	ldr r0, = hayCon
	ldrb r0, [r0]

	cmp r0, #1			@si el flag hayCon es distinto de 1, no hay coincidencias y por tanto hay un error
	bne error


	@ Preparamos el ciclo

	ldr r0, = letra_elegida
	ldrb r0, [r0]	
	
	ldr r1, = conPos

	mov r2, #0	@indice
		
	b ciclo_aciertos

ciclo_aciertos:

	cmp r2, #5		
	beq resultado_intento_end

	ldrb r4, [r1, r2]

	cmp r4, r0
	beq reemplazar

	add r2, #1
	b ciclo_aciertos


reemplazar:

	cmp r2, #0
	beq primeraLetra

	cmp r2, #1
	beq segundaLetra

	cmp r2, #2
	beq terceraLetra

	cmp r2, #3
	beq cuartaLetra

	cmp r2, #4
	beq quintaLetra
	
primeraLetra:
	
	strb r0, [r3, #1484]	 
	
	add r2, #1
	b ciclo_aciertos

segundaLetra:

	strb r0, [r3,  #1489]	 

	add r2, #1
	b ciclo_aciertos

terceraLetra:

	strb r0, [r3, #1494]	 

	add r2, #1
	b ciclo_aciertos

cuartaLetra:

	strb r0, [r3, #1499]	 
	
	add r2, #1
	b ciclo_aciertos

quintaLetra:

	strb r0, [r3, #1504]	 

	add r2, #1
	b ciclo_aciertos

error:	

	ldr r5, = vidas	@si no r5 es la direccion de las vidas
	ldrb r6, [r5]	@r6 son las vidas
	add r6, r6, #-1	@si no hay acierto restamos una vida
	strb r6, [r5] 	@se actualiza el dato de las vidas

	cmp r6, #5	@si las vidas son 5
	beq head
	
	cmp r6, #4	@si las vidas son 4
	beq body
	
	cmp r6, #3	@ ...
	beq Larm

	cmp r6, #2	@ ...
	beq Rarm

	cmp r6, #1	@ ...
	beq Lleg

	cmp r6, #0	@ ...
	beq Rleg
	
	b resultado_intento_end

	head:
		mov r7, #'O'
	
		strb r7, [r3,#525]
	
		b resultado_intento_end
	
	body:
		@mov r8, #591
		@adds r3, r8

		mov r7, #'|'
	
		strb r7, [r3, #591]

		@adds r8, #69
	
		strb r7, [r3, #660]
	
		b resultado_intento_end

	Larm:
		@mov r8, #590
		@adds r3, r8

		mov r7, #0x2f
	
		strb r7, [r3, #590]
		
		b resultado_intento_end
		
		
	Rarm:
		@mov r8, #592
		@adds r3, r8

		mov r7, #0x5c
	
		strb r7, [r3, #592]
				
		b resultado_intento_end


	Lleg:	
		@mov r8, #727
		@adds r3, r8

		mov r7, #0x2f
	
		strb r7, [r3, #728]
				
		b resultado_intento_end


	Rleg:	
		@mov r8, #695
		@adds r3, r8

		mov r7, #0x5c
	
		strb r7, [r3, #730]
		
		b resultado_intento_end


resultado_intento_end:

	pop {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
   	 bx lr
   	 .fnend


reinicio_conPos:

	.fnstart
	push {r0, r1, r2, lr}

	ldr r0, = conPos
	mov r1, #0x78
	mov r2, #0

	b ciclo_composicion

	ciclo_composicion:
		
		cmp r2, #5
		beq reinicio_conPos_end

		strb r1, [r0, r2]
		
		add r2, #1
		b ciclo_composicion
	
	reinicio_conPos_end:

	pop {r0, r1, r2, lr}
	bx lr
	.fnend

reinicio_horca:	@reinicia la horcaJugador

	.fnstart 
	push {r0, r1, r2, r3, r4, lr}

	ldr r0, = horca1
	ldr r1, = horcaJugador
	mov r2, #0
	ldr r4, = horcaJugadorLen
		
	b ciclo_horca

	ciclo_horca:

		cmp r2, r4
		beq reinicio_horca_end
		
		ldrb r3, [r0, r2]	@byte a byte reemplazo la informacion de horca1
		strb r3, [r1, r2]	@en horcaJugador
	
		add r2, #1
		b ciclo_horca
	
	
reinicio_horca_end:
	
	pop {r0, r1, r2, r3, r4, lr}
	bx lr
	.fnend


reinicio_puntos:
	
	.fnstart
	push {r0, r1, lr}	

	@ actualizamos los puntos
	ldr r0, = puntos
	ldr r1, [r0]
			
	add r1, #1
	str r1, [r0]
	
	pop {r0, r1, lr}
	bx lr
	.fnend

reinicio_vidas:
	
	.fnstart
	push {r0, r1, lr}

	@actualizamos las vidas
	ldr r0, = vidas
	mov r1, #6
	str r1, [r0]		

	pop {r0, r1, lr}
	bx lr
	.fnend


comparar_conPos:

	.fnstart
	push {r0, r1, r2, r3, r4, r5, lr}

	ldr r0, = conPos
	ldr r1, = word
	
	mov r2, #0
	mov r3, #0

	b ciclo_comparacion

	ciclo_comparacion:

	cmp r2, #5
	beq resto

	ldrb r4, [r0, r2]
	ldrb r5, [r1, r2]

	cmp r4, r5
	beq suma_comparacion

	add r2, #1
	b ciclo_comparacion

	suma_comparacion: 
				
	add r3, #1
	add r2, #1
	b ciclo_comparacion

	resto:
	
	cmp r3, #5
	beq hay_victoria
	b comparar_conPos_end

	hay_victoria:
	
	ldr r1, = flag_victoria
	mov r2, #1
	
	str r2, [r1]
	b comparar_conPos_end
	

comparar_conPos_end:

	pop {r0, r1, r2, r3, r4, r5, lr}
	bx lr
	.fnend
	
/* SUBRUTINAS PARA EL RANKING */

leer_ranking:
    	.fnstart
    	push {r0, r1, r2, r3, r7, r8, lr}
    
	mov r7, #5                @ Sys 5 - Buscar en memoria
	ldr r0, =rankfile         @ nombre del archivo
	mov r1, #2                @ Permisos de apertura
	mov r2, #0                @ Permisos generales, no aplica para un archivo creado
    	swi 0                     @ interrupcion

    	mov r8, r0                @ Mover el descriptor a r8    
    	ldr r3, =ranklen

    	mov r7, #3                @ Sys 3 - Leer
    	mov r0, r8                @ Leer el contenido del FileDescriptor
    	ldr r1, =rankings         @ cargamos en r1 la lista (ahora mismo vacia)
    	mov r2, r3                @ largo de la palabra
    	swi 0    

    	mov r7, #6                @ Syscall para cerrar
    	swi 0

    	pop {r0, r1, r2, r3, r7, r8, lr}
    	bx lr
    	.fnend

procesar_ranking:                @ Mueve el segundo nombre a la tercera posicion de nombres y mueve el primer nombre a la segunda posicion de la fila
    	.fnstart
    	push {r0, r1, r2, r3, r4, r5, r7, lr}
    
   	bl mover_nombre1	@muevo el segundo nombre de la lista a donde va el tercer nombre de la lista
    	bl mover_nombre2	@muevo el primer nombre de la lista a donde ve el segundo nombre de la lista, reemplazandolo

    	@ Ingreso el nombre
    	@ Preparo los registros para el loop que se encarga de escribir el nombre del actual jugador en la primera fila
    	ldr r0, =rankings

   	ldr r1, =nombre          
   	ldr r2, =nombreLen        @ Longitud del nombre
    	mov r3 , #0               @ Indice    
    
	b loop_nombre
	
// Estas subrutinas son para reemplazar los nombres para dejar espacio para el nuevo nombre

mover_nombre1:
    push {r0, r1, r2, r3, r4, r5, r7, lr}

    ldr r0, =rankings

    mov r1, #20                 @ Usar el indice 20 ya que esa seria la posicion del 2do nombre
    mov r4, #40                 @ indica el indice donde debe de parar de reemplazar bytes         
    ldr r5, =ranknombre2       
    bl cambiar_nombre           @ Mueve el 2ndo nombre a donde se guarda el 3er nombre

    pop {r0, r1, r2, r3, r4, r5, r7, lr}
    bx lr


mover_nombre2:
    push {r0, r1, r2, r3, r4, r5, r7, lr}
    ldr r0, =rankings
    mov r1, #0                  @ Uso el indice 0 que es la posicion del 1er nombre
    mov r4, #20			@ indice donde deberia terminar de escribir
    bl cambiar_nombre           @ Mueve el 1er nombre a donde se guarda el 2do nombre

    pop {r0, r1, r2, r3, r4, r5, r7, lr}
    bx lr

cambiar_nombre:                 @ esta funcion sirve para pasar un nombre de una fila a la siguiente

    // registros inputs:
    // r1 = donde comienza el puntero
    // r4 = donde debe finalizar el recorrido de la palabra

    cmp r1, r4                @ si el indice esta sobre la posicion r4, debe dejar de escribir
    beq volver

    ldrb r2, [r0,r1]          @ carga el byte indicado por el indice
    
    add r3 , r1 ,#20          @ le suma 20 al indice para asi indicar donde queda la posicion del 3er nombre
    
    strb r2, [r0,r3]          @ muevo la letra cargada en r2 a la tercera fila donde se encuentra el indice
    
    mov r3, #0                @ reseteo r3 para la proxima iteracion
    add r1, #1                @ le sumo 1 al indice
    
    b cambiar_nombre

volver:
    bx lr

// Fin de las subrutinas para dejarle espacio al nuevo nombre

// Subrutinas utilizadas para escribir el nombre del nuevo jugador en el ranking
loop_nombre:
    cmp r3, #19                @ Si el indice es 19 (bytes) entonces ya deberia terminar de copiar    
    beq fin_copia

    ldrb r4, [r1, r3]           @ Cargo la letra del nombre indicada por el indice
    cmp r4, #'\n' 		@ si el caracter ingresado en el nombre es un salto de linea significa que
    beq seguir_copia    	
    
    strb r4, [r0, r3]          @ Guarda la letra en el ranking indicado por el indice
    
    add r3, #1                @ Aumento el indice

    b loop_nombre

seguir_copia:
    cmp r3, #19                @ si el indice es 20 termina de copiar
    beq fin_copia  

    mov r5, #' '              @ caracter vacio "espacio"

    strb r5, [r0,r3]          @ lo agrego al ranking en su respectivo indice

    add r3, #1
    
    b seguir_copia

fin_copia:
    pop {r0, r1, r2, r3, r4, r5, r7, lr}
    bx lr
    .fnend

// Fin de las subrutinas para copiar el nuevo jugador al ranking

// grabar_ranking se encarga de abrir el archivo, formatearlo y ingresar la lista actualizada que esta guardada en un buffer, cierra el archivo.
grabar_ranking:
	.fnstart
	push {r0, r1, r2, r7, lr}

	@ Reabrir el archivo para escribir la lista actualizada
	mov r7, #5       		@ Syscall number for open
	ldr r0, =rankfile
	mov r1, #577  		        @ escritura y formatea
	mov r2, #0        
	swi 0

	mov r4, r0     			@ Guardar descriptor de archivo

	@ Escribir la lista actualizada en el archivo
	mov r7, #4       		@ Syscall para escribir
	mov r0, r4       		@ Descriptor de archivo
	ldr r1, =rankings 
	mov r2, #60    			@ Número de bytes a escribir (3 líneas de 22 bytes + 3 \n)
	swi 0
	
	@ cerrar el archivo
	mov r7, #6      		@ Syscall para cerrar
	mov r0, r4      		@ Descriptor de archivo
	swi 0

	pop {r0, r1, r2, r7, lr}
	bx lr
	.fnend

// Las siguientes funciones se utilizan para extraer los nombres del archivo y guardarlos en un buffer para luego imprimirlas en el ranking

rank_nombres:
	.fnstart
	push {r0, r1, r2, r3, r4, r5, r7, lr}

	ldr r1, =rankings             @Este es el buffer que contiene la lista actualizada, toma los nombres desde aca

	ldr r0, =ranknombre3          @Ingreso el buffer donde quiero guardar el nombre 
	mov r2, #40                   @Indice desde donde se empiezan a tomar letras del nombre
	mov r3, #0		      @Indice usado para ir guardando las palabras extraidas en el buffer (ranknombre)
	bl conseguir_nombre

	ldr r0, =ranknombre2	      @Ingreso el buffer donde quiero guardar el nombre
	mov r2, #20                   @Indice desde donde se empiezan a tomar letras del nombre
	mov r3, #0		      @Indice usado para ir guardando las palabras extraidas en el buffer (ranknombre)
	bl conseguir_nombre

	ldr r0, =ranknombre1
	mov r2, #0
	mov r3, #0
	bl conseguir_nombre

	pop {r0, r1, r2, r3, r4, r5, r7, lr}
	bx lr
	.fnend

conseguir_nombre:       	@Esta subrutina se encarga de guardar una palabra del listado de nombres en el buffer indicado
	// r0 = buffer donde se va a guardar el nombre deseado
	// r2 = indice donde empieza el nombre en el listado
	// r3 = indice para ir guardando la letra en el buffer (r0) (debe ser iniciado en 0)

	cmp r3, #20    			@si es 20, vuelve donde se llamo
	beq volver

	ldrb r4, [r1,r2] 	 	@Carga un byte del listado de nombres, indicado por el indice r2 
	cmp r4, #'\n'		 	@Si este byte es un salto de linea, significa que es el final de la palabra
	beq volver

	strb r4, [r0, r3]  	 	@Se guarda el byte del listado en el buffer deseado, el indice es r3

	add r3, #1			@le sumo 1 al indice que carga la letra en el buffer
	add r2, #1			@le suma 1 al indice que indica donde se toman las letras en el listado

	b conseguir_nombre

// Fin de las funciones para extraer nombres del listado de nombres

// mostrar_ranking, toma cada nombre y lo agrega al cartel ascii que indica los ultimos jugadores

mostrar_ranking:
	.fnstart
	push {r0, r1, r2, r3, r4, r7, lr}

	bl rank_nombres  
	ldr r0, =msgrank          @Tablero del ranking

	mov r1, # 186             @Posicion del cartel ascii
	ldr r2, =ranknombre1      @Nombre que quiero escribir en el cartel
	mov r3, #0                @Indice 
	bl loop_ranking

	mov r1, # 274             @Posicion del cartel ascii
	ldr r2, =ranknombre2      @Nombre que quiero escribir en el cartel
	mov r3, #0                @Indice
	bl loop_ranking


	mov r1, # 362
	ldr r2, =ranknombre3
	mov r3, #0
	bl loop_ranking

	pop {r0, r1, r2, r3, r4, r7, lr}
	bx lr 
	.fnend

loop_ranking: //Ingresa los nombres deseados en el cartel ascii de ranking
	// r0 = Direccion del cartel ascii
	// r1 = Posicion del cartel ascii
	// r2 = Direccion del nombre que quiero agregar
	// r3 = Contador / indice (siempre arranca en 0)
	cmp r3, #19        
	beq volver
	
	ldrb r4, [r2, r3]        @cargo la palabra de nombre con indice r3 en el registro r4
	cmp r4, #'\n'
	beq volver

	strb r4, [r0,r1]         @la guardo en la posicion del ascii para el primer nombre
	add r3, #1               @sumo 1 al indice
	add r1, #1               @sumo 1 a la posicion del ascii 
	b loop_ranking

/* TERMINAN LAS SUBRUTINAS PARA EL RANKING */


.global main

main:
		
	@ bienvenida
	ldr r1, = bienvenidaMsj
	ldr r2, = bienvenidaMsjLen

	bl imprimir

	@ usuario ingresa nombre
	ldr r1, = nombre 	
	mov r2, #26

	bl pedir_input

	// inicializo variables random
	@ se obtiene una seed luego de escribir el nombre

	bl obtener_seed

	@ Lee las palabras del archivo palabras.txt
	bl leer_palabras
	
	@se busca una palabra random 
	bl sortear_palabra
	
	// terminan variables random


	@ se explican las relgas

	ldr r1, = bienvenidaMsj2
	ldr r2, = bienvenidaMsj2Len

	bl imprimir

	@ iniciar ciclo de juego:
	
	b juego

juego:
	
	@ si se perdieron todas las vidas, es una derrota
	
	ldr r0, = vidas
	ldr r0, [r0]
	cmp r0, #0
	beq derrota

	@ si conPos = word, entonces es una victoria

	bl comparar_conPos
	ldr r0, = flag_victoria
	ldr r0, [r0]
	cmp r0, #1
	beq victoria

	@ se imprime el mapa	

	ldr r1, = horcaJugador
	ldr r2, = horcaJugadorLen

	bl imprimir

	@ imprimir vidas

	bl actualizar_vidas

	ldr r1, = vidasMsj
	ldr r2, = vidasMsjLen
	
	bl imprimir

	@ Imprimir puntos
	
	bl actualizar_puntos

	ldr r1, = puntosMsj
	ldr r2, = puntosMsjLen
	
	bl imprimir

	@ se pide letra

	ldr r1, = eligeLetra
	ldr r2, = eligeLetraLen	

	bl imprimir

	ldr r1, = letra_elegida
	mov r2, #26

	bl pedir_input

	@ comprobar si hay coincidencia
	bl comprobar_letra
	
	@ actualizamos en base al resultado
	bl resultado_intento

	@ reiniciamos ciclo

	b juego

victoria:
	
	ldr r0, = flag_victoria
	mov r1, #0
	str r1, [r0]

	@ se imprime el mapa	

	ldr r1, = horcaJugador
	ldr r2, = horcaJugadorLen

	bl imprimir
	
	@ actualizar puntos
	
	bl reinicio_puntos

	@ si se llegan a 9 puntos se termina el juego y se llega al ranking

	ldr r0, = puntos
	ldr r0, [r0]
	cmp r0, #9
	beq juego_end

	@ Se indica que ej jugador gano
	ldr r1, = despedidaMsj2
	ldr r2, = despedidaMsj2Len

	bl imprimir

	b preguntaVolverJugar

	preguntaVolverJugar: @ pedimos respuesta

	@ se pregunta si se quiere jugar otra vez
	ldr r1, = jugarOtravez
	ldr r2, = jugarOtravezLen

	bl imprimir

	ldr r1, = continuar_rta
	mov r2, #26

	bl pedir_input

	@ vemos si es "s" (si) o "n" (no)
	
	ldr r0, = continuar_rta
	ldrb r0, [r0]
	
	mov r1, #0x73
	
	cmp r0, r1
	beq continua	

	mov r1, #0x6e

	cmp r0, r1
	@Aca llamar al ranking, mostrar y terminar 
	beq juego_end
	
	ldr r1, = opcionIncorrectaMsj
	ldr r2, = opcionIncorrectaMsjLen

	bl imprimir

	b preguntaVolverJugar

continua:

	bl reinicio_horca

	bl reinicio_conPos

	bl reinicio_vidas
	
	bl sortear_palabra   @ Se genera otra palabra aleatoria

	b juego	

derrota:

	@ se imprime el mapa	

	ldr r1, = horcaJugador
	ldr r2, = horcaJugadorLen

	bl imprimir
	
	ldr r1, = oportunidadMsg
	ldr r2, = oportunidadMsgLen

	bl imprimir
	
	b confirmar

confirmar:
	ldr r1, =confirmacion
        mov r2, #2
	
	bl pedir_input
	
	ldrb r5, [r1]
    
    	cmp r5, #'s'
    	beq respuestaSi

    	cmp r5, #'n'
	beq jugarOtraVez

    	b preguntarOtravez

preguntarOtravez:
	ldr r1, = oportunidadError
	ldr r2, = oportunidadErrorLen
	bl imprimir

	b confirmar

respuestaSi:
	ldr r1, = oportunidadFilas
	ldr r2, = oportunidadFilasLen

	bl imprimir

pedir_numeroX:
	ldr r1, =numeroX
        mov r2, #3
	bl pedir_input

	ldrb r6, [r1]          @ Leer primer dígito
    	sub r6, r6, #'0'       @ Convertir primer dígito
    	
	cmp r6, #9
    	bgt errorInputX  @ Si r6 > 9, es inválido
    	cmp r6, #0
    	blt errorInputX  @ Si r6 < 0, es inválido
	
	mov r8, #10            @ Cargar 10 en r8
    	mul r9, r6, r8         @ Multiplicar primer dígito por 10, almacenar en r9
    
    	ldrb r7, [r1, #1]      @ Leer segundo dígito
	
	sub r7, r7, #'0'       @ Convertir segundo dígito
    	
	add r6, r9, r7         @ Combinar ambos dígitos
        
	cmp r6, #38
        beq primerAcierto
	
	b noAcierto

errorInputX:
	ldr r1, =opcionIncorrectaMsj @ Mensaje de error
    	ldr r2, =opcionIncorrectaMsjLen
    	bl imprimir
    	b pedir_numeroX

primerAcierto:
	ldr r1, =oportunidadColumna
	ldr r2, =oportunidadColumnaLen

	bl imprimir

pedir_numeroY:
	ldr r1, =numeroY
        mov r2, #3
	bl pedir_input
	
	ldrb r5, [r1]
        sub r5, r5, #'0'
	
	cmp r5, #9
    	bgt errorInputY   @ Si r5 > 9, es inválido
    	cmp r5, #0
    	blt errorInputY   @ Si r5 < 0, es inválido


	cmp r5, #4
    	beq salvado

	b falloB
errorInputY:
	ldr r1, =opcionIncorrectaMsj @ Mensaje de error
    	ldr r2, =opcionIncorrectaMsjLen
    	bl imprimir
    	b pedir_numeroY


noAcierto:
	ldr r1, =oportunidadColumna
	ldr r2, =oportunidadColumnaLen

	bl imprimir
	
	ldr r1, =numeroY
        mov r2, #3
	bl pedir_input

	ldrb r5, [r1]
        sub r5, r5, #'0'
	
	cmp r5, #9
    	bgt errorInputY   @ Si r5 > 9, es inválido
    	cmp r5, #0
    	blt errorInputY   @ Si r5 < 0, es inválido


	cmp r5, #4
    	beq falloA
	
	b falloC

falloA:
	ldr r1, =falloX
	ldr r2, =falloXLen

	bl imprimir
	
	b jugarOtraVez

falloB:
	ldr r1, =falloY
	ldr r2, =falloYLen

	bl imprimir
	
	b jugarOtraVez

falloC:
	ldr r1, =falloXeY
	ldr r2, =falloXeYLen

	bl imprimir

	b jugarOtraVez
salvado:
	ldr r1, =oportunidadGanado
	ldr r2, =oportunidadGanadoLen

	bl imprimir
	
	b jugarOtraVez

jugarOtraVez:
	@ldr r1, =jugarOtravez
	@ldr r2, =jugarOtravezLen
	
	@bl imprimir

	b preguntaVolverJugar
	
juego_end:
	
	//ranking
	
	bl leer_ranking
	bl procesar_ranking
	bl grabar_ranking
	bl mostrar_ranking

	ldr r1, =msgrank
	ldr r2, =msgranklen

	bl imprimir

	mov r7, #1
	swi 0
