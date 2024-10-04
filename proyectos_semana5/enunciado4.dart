import 'dart:io';

void main() {
  print("Ingrese un número para invertir sus dígitos:");
  int? n = int.tryParse(stdin.readLineSync()!);

  if (n == null) {
    print("Entrada inválida.");
    return;
  }

  int numero = n;
  int invertido = 0;

  while (numero != 0) {
    int digito = numero % 10;
    invertido = invertido * 10 + digito;
    numero ~/= 10;
  }

  print("El número invertido es: $invertido");
}
