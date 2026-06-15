# Nombre: Jose
# Curso: Ingeniería de Sistemas
# Descripción: Calcula el porcentaje total por estudiante y asigna una calificación con letra.

BEGIN {
    FS=","
    printf "%-10s %10s %8s\n", "Estudiante", "Porcentaje", "Letra"
}

NR > 1 {
    estudiante = $1
    obtenido[estudiante] += $4
    posible[estudiante] += $5
}

END {
    for (estudiante in obtenido) {
        porcentaje = (obtenido[estudiante] / posible[estudiante]) * 100

        if (porcentaje >= 90) {
            letra = "A"
        } else if (porcentaje >= 80) {
            letra = "B"
        } else if (porcentaje >= 70) {
            letra = "C"
        } else if (porcentaje >= 60) {
            letra = "D"
        } else {
            letra = "E"
        }

        printf "%-10s %10.2f %8s\n", estudiante, porcentaje, letra
    }
}
