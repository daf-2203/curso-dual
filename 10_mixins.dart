abstract class Animal {}

abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print('Estoy volando!');
}

mixin Caminante {
  void caminar() => print('Estoy caminando!');
}

mixin Nadador {
  void nadar() => print('Estoy nadando!');
}

class Delfin extends Pez with Nadador {}
class Murcielago extends Mamifero with Caminante, Volador {}
class Pato extends Ave with Caminante, Volador, Nadador {}

void main() {
  final flipper = Delfin();
  flipper.nadar();

  final pato = Pato();
  pato.caminar();
  pato.volar();
  pato.nadar();
}