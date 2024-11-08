import 'dart:io';

class Estudiante {
  String codigo;
  String nombre;
  double nota01;
  double nota02;

  // Constructor
  Estudiante(this.codigo, this.nombre, this.nota01, this.nota02);

  void mostrarInformacion() {
    print("Código: $codigo");
    print("Nombre: $nombre");
    print("Nota 01: $nota01");
    print("Nota 02: $nota02");
    print("Su promedio es: ${calcularPromedio()}");
  }

  double calcularPromedio() {
    return (nota01 + nota02) / 2;
  }
}

void main() {
  List<Estudiante> listaEstudiantes = [];
  
  print("¿Cuántos estudiantes desea ingresar?");
  int cantidad = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < cantidad; i++) {
    print("\n--- Ingresando datos del estudiante ${i + 1} ---");
    var estudiante = Estudiante("", "", 0, 0); 
    ingresarDatos(estudiante);
    listaEstudiantes.add(estudiante); 
  }
  
  print("\n--- Información de los Estudiantes ---");
  for (var estudiante in listaEstudiantes) {
    estudiante.mostrarInformacion();
    print("---");
  }
}

void ingresarDatos(Estudiante estudiante) {
  print("Ingrese el código del estudiante:");
  estudiante.codigo = stdin.readLineSync()!;

  print("Ingrese el nombre del estudiante:");
  estudiante.nombre = stdin.readLineSync()!;

  print("Ingrese la nota 01 del estudiante:");
  estudiante.nota01 = double.parse(stdin.readLineSync()!);

  print("Ingrese la nota 02 del estudiante:");
  estudiante.nota02 = double.parse(stdin.readLineSync()!);
}