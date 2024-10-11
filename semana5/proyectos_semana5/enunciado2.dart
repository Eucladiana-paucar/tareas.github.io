import 'dart:io';

void main() {
  
  print("Ingrese el número de términos para la secuencia de Fibonacci:");
  int? n = int.tryParse(stdin.readLineSync()!);

  
  if (n == null || n <= 0) {
    print("Por favor, ingrese un número entero positivo mayor a 0.");
    return;
  }

  
  List<int> fibonacci = [];
  int a = 0, b = 1;

  for (int i = 0; i < n; i++) {
    fibonacci.add(a);
    int next = a + b;
    a = b;
    b = next;
  }

  
  print("La secuencia de Fibonacci con $n términos es: $fibonacci");
}
