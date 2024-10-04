import 'dart:io';
import 'dart:math'; // Se utiliza para la constante pi

void main() {
  
  stdout.write("Ingrese el valor del radio (r) del cilindro: ");
  String? radioInput = stdin.readLineSync();
  stdout.write("Ingrese el valor de la altura (h) del cilindro: ");
  String? alturaInput = stdin.readLineSync();

  
  double radio = double.parse(radioInput!);
  double altura = double.parse(alturaInput!);

  
  double area = 2 * pi * radio * (radio + altura);

  
  double volumen = pi * pow(radio, 2) * altura;

  
  print("El área total del cilindro es: ${area.toStringAsFixed(2)}");
  print("El volumen del cilindro es: ${volumen.toStringAsFixed(2)}");
}
