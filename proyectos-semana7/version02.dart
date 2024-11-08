import 'dart:io'; 

class Estudiante {
  String codigo;
  String nombres;
  double nota1;
  double nota2;

  Estudiante(this.codigo, this.nombres, this.nota1, this.nota2);

  void mostrarinformacion() {
    print('Código: $codigo');
    print('Nombres: $nombres');
    print('Nota 1: $nota1');
    print('Nota 2: $nota2');
    print('Promedio: ${calcularPromedio()}');
  }

  double calcularPromedio() {
    return (nota1 + nota2) / 2;
  }
}

void main() {
  List<Estudiante> listaEstudiantes = [];

  
  stdout.write('¿Cuántos estudiantes desea ingresar? ');
  int cantidadEstudiantes = int.parse(stdin.readLineSync()!); 

  
  for (int i = 0; i < cantidadEstudiantes; i++) {
    print('Estudiante ${i + 1}:');
    
    stdout.write('Código: '); 
    String codigo = stdin.readLineSync()!; 

    stdout.write('Nombres: '); 
    String nombres = stdin.readLineSync()!; 

    double nota1;
    while (true) {
      stdout.write('Nota 1: '); 
      String? inputNota1 = stdin.readLineSync(); 
      try {
        nota1 = double.parse(inputNota1!); 
        break; 
      } catch (e) {
        print('Por favor, ingrese un número válido para Nota 1.'); 
      }
    }

    double nota2;
    while (true) {
      stdout.write('Nota 2: '); 
      String? inputNota2 = stdin.readLineSync(); 
      try {
        nota2 = double.parse(inputNota2!); 
        break;
      } catch (e) {
        print('Por favor, ingrese un número válido para Nota 2.'); 
      }
    }

    
    listaEstudiantes.add(Estudiante(codigo, nombres, nota1, nota2));
    print('---'); 
  }

  print('\nLista de estudiantes ingresados:');
  for (var estudiante in listaEstudiantes) {
    estudiante.mostrarinformacion(); 
    print('---'); 
  }
}
