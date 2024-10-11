import 'dart:io';

void main() {
  print("Ingrese un número para verificar si es un número Armstrong:");
  int? n = int.tryParse(stdin.readLineSync()!);

  if (n == null) {
    print("Por favor, ingrese un número entero válido.");
    return;
  }

  
  String numStr = n.toString();
  int numDigitos = numStr.length;
  int suma = 0;

  for (int i = 0; i < numDigitos; i++) {
    int digito = int.parse(numStr[i]);
    suma += digito * digito * digito; 
  }

  
  if (suma == n) {
    print("$n es un número Armstrong");
  } else {
    print("$n no es un número Armstrong");
  }
}
