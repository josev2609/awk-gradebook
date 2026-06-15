#Tarea 1
#Comando:
#awk -F',' 'NR>1 {count++} END {print count}' Lab03-data.csv
#Resultado:
322
#Explicación:
#Este comando usa awk con separador de campos por coma mediante -F','.
#La condición NR>1 omite la primera línea del encabezado.
#Luego cuenta cada entrega y en el bloque END imprime el total.