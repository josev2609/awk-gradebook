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
PEGUE_AQUI_LAS_LINEAS_QUE_SALIERON
#Explicación:
#Este comando filtra las filas donde el campo $3 es FINAL.
#Luego usa printf para mostrar el nombre alineado a la izquierda y la nota alineada a la derecha.
#El campo $1 es el estudiante y el campo $4 es la puntuación obtenida