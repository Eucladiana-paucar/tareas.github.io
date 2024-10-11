import 'dart:io';

void main() {
  print("Ingrese la base de la potencia:");
  int? base = int.tryParse(stdin.readLineSync()!);

  print("Ingrese el exponente de la potencia:");
  int? exponente = int.tryParse(stdin.readLineSync()!);

  if (base == null || exponente == null || exponente < 0) {
    print("Por favor, ingrese números enteros válidos y un exponente no negativo.");
    return;
  }

  int resultado = 1;

  for (int i = 0; i < exponente; i++) {
    resultado *= base;
  }

  print("El resultado de $base^$exponente es: $resultado");
}
