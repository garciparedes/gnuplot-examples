#
# Ejercicio 2 DESI: Gnuplot
# Sergio Garcia Prado
# https://github.com/garciparedes/gnuplot-examples/tree/master/ejercicio2
#


#
# Declaramos los limites de cada uno de los 3 datos
# en el grafico.
#

bar1Left = -0.25
bar1Right = 0.25
bar1Top = 10

bar2Left = 0.75
bar2Right = 1.25
bar2Top = 25

bar3Left = 1.75
bar3Right = 2.25
bar3Top = 15


pause mouse any


#
# Caso de que el click del raton sea dentro del
# primer dato.
#
# Sombreamos el resto de graficos y coloreamos el actual.
# Añadimos la etiqueta y borramos las anteriores.
# Volvemos a cargar el grafico y volvemos a llamar
# a este fichero para la siguiente pulsacion.
#
if(( MOUSE_BUTTON==1 ) &(MOUSE_X > bar1Left) & (MOUSE_X <= bar1Right) & (MOUSE_Y <= bar1Top) ){

    set style line 1 lt 1 lc rgb "red"
    set style line 2 lt 1 lc rgb "grey"
    set style line 3 lt 1 lc rgb "grey"

	set label 1 "10" at 0,10-1 textcolor ls -1 front
	unset label 2
	unset label 3

	replot
	call 'click_loop.gnu'
}


#
# Caso de que el click del raton sea dentro del
# segundo dato.
#
# Sombreamos el resto de graficosy  coloreamos el actual.
# Añadimos la etiqueta y borramos las anteriores.
# Volvemos a cargar el grafico y volvemos a llamar
# a este fichero para la siguiente pulsacion.
#
if(( MOUSE_BUTTON==1 ) & (MOUSE_X > bar2Left)& (MOUSE_X <= bar2Right) & (MOUSE_Y <= bar2Top)  ){

    set style line 1 lt 1 lc rgb "grey"
    set style line 2 lt 1 lc rgb "blue"
    set style line 3 lt 1 lc rgb "grey"

	unset label 1
	set label 2 "25" at 1,25-1 textcolor ls -1 front
	unset label 3

	replot
	call 'click_loop.gnu'
}


#
# Caso de que el click del raton sea dentro del
# tercer dato.
#
# Sombreamos el resto de graficos y coloreamos el actual.
# Añadimos la etiqueta y borramos las anteriores.
# Volvemos a cargar el grafico y volvemos a llamar
# a este fichero para la siguiente pulsacion.
#
if(( MOUSE_BUTTON==1 ) & (MOUSE_X > bar3Left)& (MOUSE_X <= bar3Right) & (MOUSE_Y <= bar3Top)  ){

	set style line 1 lt 1 lc rgb "grey"
	set style line 2 lt 1 lc rgb "grey"
	set style line 3 lt 1 lc rgb "green"

	unset label 1
	unset label 2
	set label 3 "15" at 2,15-1 textcolor ls -1 front

	replot
	call 'click_loop.gnu'
}


#
# Caso de que el click del raton sea fuera de los 3 datos
#
# Ponemos el color por defecto a todos los datos
# Borramos todas las entiquetas.
# Volvemos a cargar el grafico y volvemos a llamar
# a este fichero para la siguiente pulsacion
#
if(( MOUSE_BUTTON==1 ) \
	 & !((MOUSE_X > bar1Left) & (MOUSE_X <= bar1Right) & (MOUSE_Y <= bar1Top) ) \
	 & !((MOUSE_X > bar2Left) & (MOUSE_X <= bar2Right) & (MOUSE_Y <= bar2Top) ) \
	 & !((MOUSE_X > bar3Left) & (MOUSE_X <= bar3Right) & (MOUSE_Y <= bar3Top) ) ){

    set style line 1 lt 1 lc rgb "red"
	set style line 2 lt 1 lc rgb "blue"
	set style line 3 lt 1 lc rgb "green"

	unset label 1
	unset label 2
	unset label 3

	replot
	call 'click_loop.gnu'
}
