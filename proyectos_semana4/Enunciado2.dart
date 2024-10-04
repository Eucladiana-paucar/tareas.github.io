import 'dart:io';

void main() {
  
  const double costoMayorDe18 = 350.0;
  const double costoMenorOIgual18 = 200.0;

 
  print('Ingrese la edad del hombre:');
  int edad = int.parse(stdin.readLineSync()!);


  print('Ingrese el nivel del sistema de beneficio (1, 2, 3 o cualquier otro número):');
  int nivel = int.parse(stdin.readLineSync()!);


  double costo;
  double descuento = 0.0;

 
  if (edad > 18) {
    costo = costoMayorDe18;

 
    if (nivel == 1) {
      descuento = costo * 0.40;
    } else if (nivel == 2) {
      descuento = costo * 0.30;
    } else if (nivel == 3) {
      descuento = costo * 0.15;
    }
  } else if (edad == 18) {
    costo = costoMenorOIgual18;

  
    if (nivel == 1) {
      descuento = costo * 0.60;
    } else if (nivel == 2) {
      descuento = costo * 0.40;
    } else if (nivel == 3) {
      descuento = costo * 0.20;
    }
  } else {
    print('La edad ingresada debe ser 18 años o más para la libreta militar.');
    return;
  }

  
  double valorFinal = costo - descuento;

  
  print('Costo original de la libreta: S/. ${costo.toStringAsFixed(2)}');
  print('Descuento aplicado: S/. ${descuento.toStringAsFixed(2)}');
  print('Valor final a pagar: S/. ${valorFinal.toStringAsFixed(2)}');
}
