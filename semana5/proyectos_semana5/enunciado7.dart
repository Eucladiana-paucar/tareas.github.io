import 'dart:io';

void main() {
  print("Ingrese el tamaño de la matriz cuadrada:");
  int? n = int.tryParse(stdin.readLineSync()!);

  if (n == null || n <= 0) {
    print("Por favor, ingrese un número entero positivo.");
    return;
  }

  List<List<int>> matriz = List.generate(n, (_) => List.filled(n, 0));
  int valor = 1;
  int filaInicio = 0, filaFin = n - 1;
  int colInicio = 0, colFin = n - 1;

  while (filaInicio <= filaFin && colInicio <= colFin) {
    for (int col = colInicio; col <= colFin; col++) {
      matriz[filaInicio][col] = valor++;
    }
    filaInicio++;

    for (int fila = filaInicio; fila <= filaFin; fila++) {
      matriz[fila][colFin] = valor++;
    }
    colFin--;

    for (int col = colFin; col >= colInicio; col--) {
      matriz[filaFin][col] = valor++;
    }
    filaFin--;

    for (int fila = filaFin; fila >= filaInicio; fila--) {
      matriz[fila][colInicio] = valor++;
    }
    colInicio++;
  }

  for (int i = 0; i < n; i++) {
    print(matriz[i]);
  }
}
