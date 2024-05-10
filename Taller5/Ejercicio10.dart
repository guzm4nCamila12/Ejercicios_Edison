//explicar
void main() {
    double poblacionA = 3.5;
    double poblacionB = 5.0;
    int anio = 1980;

    while (poblacionA <= poblacionB) {
        poblacionA += poblacionA * 0.15;
        poblacionB += poblacionB * 0.07;
        anio++;
    }

    print('La población de la ciudad A sera mayor a la de la ciudad B en el año $anio.');
}
