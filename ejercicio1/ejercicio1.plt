# Ejercicio 1 DESI: Gnuplot
# Sergio Garcia Prado

#
# Borramos la configuracion anterior
#
reset

#
# Fijamos el rango por defecto de la grafica
#
set xrange [-3.290527:0.0]
set yrange [-3.290527:0.0]

#
# Anadimos los titulos
#
set title "Skilled Forgery"
set xlabel "False Alarms probability (in %)"
set ylabel "Miss probability (in %)"

#
# Colocamos la leyenda fuera del grafico
#
set key outside

#
# Cambiamos las etiquetas de los ejes.
#
set xtics ("0.1" -3.08, "0.5" -2.57, "2" -2.05, "5" -1.64, "10" -1.28, "20" -0.84, "30" -0.52, "40" -0.25, "50" 0.0)
set ytics ("0.1" -3.08, "0.5" -2.57, "2" -2.05, "5" -1.64, "10" -1.28, "20" -0.84, "30" -0.52, "40" -0.25, "50" 0.0)

# Mostramos el grid
set grid

#
# Añadimos los datos
# Utilizamos las columnas 2 y 1, y 3 y 2 de  los ficheros
# para los ejes x e y respectivamente. Tambien determinamos el
# color, el grosor y el tipo de linea y punto en cada caso.
# Por ultimo cambiamos el nombre del la linea y el punto
#
plot "puntos" using 2:1 with lines ls 3 lw 3 dt 1 title "Puntos", \
	"puntoOptimo"  using 3:2 with point ls 4 pt 7 ps 2 title "Punto Optimo"

#
# Exportamos el fichero a JPG
#
set term jpeg
set output "grafico.jpg"
replot
