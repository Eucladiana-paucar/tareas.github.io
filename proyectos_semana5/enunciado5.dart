import 'dart:io';

void main() {
  print("Ingrese el tamaño N para las matrices NxN:");
  int? n = int.tryParse(stdin.readLineSync()!);

  if (n == null || n <= 0) {
    print("Por favor, ingrese un número entero positivo.");
    return;
  }

  List<List<int>> matriz1 = List.generate(n, (_) => List.filled(n, 0));
  List<List<int>> matriz2 = List.generate(n, (_) => List.filled(n, 0));

  
  print("Ingrese los elementos de la primera matriz:");
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      matriz1[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  
  print("Ingrese los elementos de la segunda matriz:");
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      matriz2[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  
  List<List<int>> matrizSuma = List.generate(n, (_) => List.filled(n, 0));
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      matrizSuma[i][j] = matriz1[i][j] + matriz2[i][j];
    }
  }


  print("La matriz suma es:");
  for (int i = 0; i < n; i++) {
    print(matrizSuma[i]);
  }
}
