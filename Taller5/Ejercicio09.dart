// explicar
import 'dart:io';

void main() {
    print('ingrese el capital:');
    double capital = double.parse(stdin.readLineSync()!);
    double capitalDuplicado = capital * 2;
    double interesMensual = 0.05;
    int meses = 0;

    while (capital < capitalDuplicado) {
        capital += capital * interesMensual;
        meses++;
    }

    print('El capital se duplicara en $meses meses.');
}
