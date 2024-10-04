import 'dart:io';

void main() {
  
  Map<String, double> pensiones = {
    'A': 550.0,
    'B': 500.0,
    'C': 460.0,
    'D': 400.0,
  };

  
  print('Ingrese la categoría del estudiante (A, B, C, D):');
  String categoria = stdin.readLineSync()!.toUpperCase();

  
  if (!pensiones.containsKey(categoria)) {
    print('Categoría inválida. Debe ser A, B, C o D.');
    return;
  }

  
  print('Ingrese el promedio ponderado del ciclo anterior:');
  double promedio = double.parse(stdin.readLineSync()!);

  
  double pension = pensiones[categoria]!;

  
  double descuento;
  if (promedio < 14.00) {
    descuento = 0.0;
  } else if (promedio < 16.00) {
    descuento = pension * 0.10;
  } else if (promedio < 18.00) {
    descuento = pension * 0.12;
  } else {
    descuento = pension * 0.15;
  }

  
  double nuevaPension = pension - descuento;

  
  print('Pensión actual: S/. ${pension.toStringAsFixed(2)}');
  print('Descuento: S/. ${descuento.toStringAsFixed(2)}');
  print('Nueva pensión: S/. ${nuevaPension.toStringAsFixed(2)}');
}
