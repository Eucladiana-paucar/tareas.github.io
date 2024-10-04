import 'dart:io';

void main() {
  print("Ingrese un número para calcular su factorial:");
  int? n = int.tryParse(stdin.readLineSync()!);

  if (n == null || n < 0) {
    print("Por favor, ingrese un número entero positivo.");
    return;
  }

  BigInt factorial = BigInt.one;
  for (int i = 1; i <= n; i++) {
    factorial *= BigInt.from(i);
  }

  print("El factorial de $n es: $factorial");
}
