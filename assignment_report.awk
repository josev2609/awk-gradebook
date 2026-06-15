# Nombre: Jose
# Curso: Ingeniería de Sistemas
# Descripción: Genera una tabla por tarea con puntuación mínima, máxima y promedio.

BEGIN {
    FS=","
    printf "%-10s %8s %8s %8s\n", "Nombre", "Mínimo", "Máximo", "Promedio"
}

NR > 1 {
    tarea = $3
    puntaje = $4 + 0

    if (!(tarea in minimo) || puntaje < minimo[tarea]) {
        minimo[tarea] = puntaje
    }

    if (!(tarea in maximo) || puntaje > maximo[tarea]) {
        maximo[tarea] = puntaje
    }

    suma[tarea] += puntaje
    cantidad[tarea]++
}

END {
    for (tarea in cantidad) {
        promedio = suma[tarea] / cantidad[tarea]
        printf "%-10s %8d %8d %8.2f\n", tarea, minimo[tarea], maximo[tarea], promedio
    }
}
