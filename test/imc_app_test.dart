import 'package:imc_app/functions/func.dart' as app;
import 'package:test/test.dart';

void main() {
  test('Testar calculo IMC', () {
    expect(app.imc(10, 10), 1000);
  });
}
