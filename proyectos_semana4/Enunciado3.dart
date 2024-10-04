import 'dart:io';

void main() {
  
  const double sueldoBasico = 600.0;
  const double comisionBajo = 0.05; 
  const double comisionAlto = 0.07;  
  const double bonificacionBajo = 25.0; 
  const double bonificacionAlto = 22.0; 
  const double descuentoAlto = 0.15; 
  const double descuentoBajo = 0.11;  

  
  print('Ingrese el importe total vendido:');
  double importeVendido = double.parse(stdin.readLineSync()!);

  
  print('Ingrese el número de hijos:');
  int numeroHijos = int.parse(stdin.readLineSync()!);


  double comision = importeVendido > 15000 ? importeVendido * comisionAlto : importeVendido * comisionBajo;

  
  double bonificacion = numeroHijos < 5 ? numeroHijos * bonificacionBajo : numeroHijos * bonificacionAlto;

  
  double sueldoBruto = sueldoBasico + comision + bonificacion;

  
  double descuento = sueldoBruto > 3500 ? sueldoBruto * descuentoAlto : sueldoBruto * descuentoBajo;

 
  double sueldoNeto = sueldoBruto - descuento;

  
  print('Sueldo básico: S/. ${sueldoBasico.toStringAsFixed(2)}');
  print('Comisión: S/. ${comision.toStringAsFixed(2)}');
  print('Bonificación: S/. ${bonificacion.toStringAsFixed(2)}');
  print('Sueldo bruto: S/. ${sueldoBruto.toStringAsFixed(2)}');
  print('Descuento: S/. ${descuento.toStringAsFixed(2)}');
  print('Sueldo neto: S/. ${sueldoNeto.toStringAsFixed(2)}');
}
