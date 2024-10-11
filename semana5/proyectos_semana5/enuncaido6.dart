void main() {
  print("Números perfectos entre 1 y 10,000:");
  for (int num = 1; num <= 10000; num++) {
    int suma = 0;

    for (int i = 1; i < num; i++) {
      if (num % i == 0) {
        suma += i;
      }
    }

    if (suma == num) {
      print("$num es un número perfecto");
    }
  }
}
