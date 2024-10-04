import 'dart:io';

void main() {
 
  stdout.write("Ingrese la cantidad de dinero a repartir: ");
  String? input = stdin.readLineSync();


  double total = double.parse(input!);


  double josue = 0.27 * total;
  double daniel = 0.25 * total;
  double tamar = 0.85 * josue;
  double caleb = 0.23 * (josue + daniel);
  double david = total - (josue + tamar + daniel + caleb);


  print("Josué recibirá: \S/${josue.toStringAsFixed(2)}");
  print("Daniel recibirá: \S/${daniel.toStringAsFixed(2)}");
  print("Tamar recibirá: \S/${tamar.toStringAsFixed(2)}");
  print("Caleb recibirá: \S/${caleb.toStringAsFixed(2)}");
  print("David recibirá: \S/${david.toStringAsFixed(2)}");
}
