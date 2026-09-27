void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('https://api.nasa.gov/aliens');
    print('Éxito: $value');
  } on Exception catch (err) {
    print('Se capturó una Exception conocida: $err');
  } catch (err) {
    print('Error no esperado: $err');
  } finally {
    print('Fin del try-catch (se ejecuta siempre)');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2));
  throw Exception('No hay parámetros en el URL');
}