import 'dart:io';

void main() {
  
  stdout.write("Ingrese el valor del lado del cuadrado: ");
  String? input = stdin.readLineSync();

  
  double lado = double.parse(input!);

  
  double area = lado * lado;
  double perimetro = 4 * lado;

  
  print("El área del cuadrado es: $area");
  print("El perímetro del cuadrado es: $perimetro");
}
