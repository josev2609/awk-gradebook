#Tarea 1
#Comando:
#awk -F',' 'NR>1 {count++} END {print count}' Lab03-data.csv
#Resultado:
322
#Explicación:
#Este comando usa awk con separador de campos por coma mediante -F','.
#La condición NR>1 omite la primera línea del encabezado.
#Luego cuenta cada entrega y en el bloque END imprime el total
#Tarea 2
#Comando:
#awk -F',' 'NR>1 {seen[$1]=1} END {for (student in seen) count++; print count}' Lab03-datacsv
#resultado:
14
#Explicación:
#Este comando usa una matriz asociativa llamada seen para guardar cada estudiante.
#El campo $1 corresponde al nombre del estudiante.
#Como las claves de una matriz no se repiten, cada estudiante se cuenta solo una vez
#Tarea 3
#Comando:
#awk -F',' 'NR>1 && $3=="FINAL" {printf "%-10s %3d\n", $1, $4}' Lab03-data.csv
#resultado:
Jackson    169
Kenji      162
Shane      193
Noah       116
Lucia      200
Priya      159
Andrew     123
Diana      152
Maria      152
Eliza      141
Tomas      163
Sam        152
Ava        172
Chelsey    142
#Explicación:
#Este comando filtra las filas donde el campo $3 es FINAL.
#Luego usa printf para mostrar el nombre alineado a la izquierda y la nota alineada a la derecha.
#El campo $1 es el estudiante y el campo $4 es la puntuación obtenida
#Tarea 4
#Comando:
#awk -F',' 'NR>1 && $4 < ($5 * 0.60) {count++} END {print count}' Lab03-data.csv
#resultado:
50
#Explicación:
#Este comando cuenta las entregas cuya puntuación es menor al 60% del máximo permitido.
#El campo $4 contiene la puntuación obtenida y el campo $5 contiene el puntaje máximo.
#Se usa $5 porque cada tarea puede tener un valor máximo diferente.
#Tarea 5
#Archivo usado:
#assignment_report.awk
#Comando:
#awk -f assignment_report.awk Lab03-data.csv
#resultado:
H07              40      100    72.93
Q01               9       20    14.29
L01              27       50    40.21
Q02               9       20    14.86
L02              23       50    39.21
Q03               8       20    15.07
L03              19       50    36.57
Q04              13       20    16.43
FINAL           116      200   156.86
Q05               8       18    15.07
L04              25       50    40.36
#Explicación:
#Este script agrupa las entregas por tarea usando el campo $3.
#Usa matrices asociativas para calcular el mínimo, máximo y promedio de cada tarea.
#El promedio se calcula dividiendo la suma de puntuaciones para el número de entregas.