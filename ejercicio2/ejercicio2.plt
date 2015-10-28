#
# Ejercicio 2 DESI: Gnuplot
# Sergio Garcia Prado
# https://github.com/garciparedes/gnuplot-examples/tree/master/ejercicio2
#

#
# Reseteamos la configuracion
#
reset


#
# Activamos el uso de raton
#
set mouse


#
# Seleccionamos el rango de valores a mostrar
#
set yrange [0.0:30.0]


#
# Elegimos el color de los datos
#
set style line 1 lc rgb "red"
set style line 2 lc rgb "blue"
set style line 3 lc rgb "green"

#
# Hacemos que se rellene el grafico de barras.
#
set style fill solid

#
# Elegimos al anchura de cada barra.
#
set boxwidth 0.5


#
# Seleccionamos los datos del fichero data.dat
#
plot "data.dat" every ::0::0 using 1:3:xtic(2) with boxes ls 1 title "Rojo", \
     "data.dat" every ::1::1 using 1:3:xtic(2) with boxes ls 2 title "Azul", \
     "data.dat" every ::2::2 using 1:3:xtic(2) with boxes ls 3 title "Verde"


#
# Llamamos al fichero que captura el click del raton
#
call 'click_loop.gnu'
