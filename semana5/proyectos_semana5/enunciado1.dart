import 'dart:io';

bool esPrimo(int n) {
  if (n <= 1) return false;
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

int sumaNumerosPrimos(int rangoInferior, int rangoSuperior) {
  int suma = 0;
  for (int num = rangoInferior; num <= rangoSuperior; num++) {
    if (esPrimo(num)) {
      suma += num;
    }
  }
  return suma;
}

void main() {
  print("Sumatoria de Números Primos en un Rango");

  while (true) {
    try {
      
      stdout.write("Ingrese el primer número (inferior): ");
      int rangoInferior = int.parse(stdin.readLineSync()!);
      stdout.write("Ingrese el segundo número (superior): ");
      int rangoSuperior = int.parse(stdin.readLineSync()!);

      
      if (rangoInferior >= rangoSuperior) {
        print("El primer número debe ser menor que el segundo. Inténtelo de nuevo.");
        continue;
      }

      
      int resultado = sumaNumerosPrimos(rangoInferior, rangoSuperior);
      print("La sumatoria de los números primos entre $rangoInferior y $rangoSuperior es: $resultado");
      break; 

    } catch (e) {
      print("Por favor, ingrese números enteros válidos.");
    }
  }
}
