import 'package:dart_app_meus_testes/dart_app_meus_testes.dart' as teste;
import 'package:test/test.dart';

void main() {
  test('Caucular desconto com porcentagem', () {
    expect(teste.caulcularDesconto(10000, 20, true), 8000);
  });

    test('Caucular desconto desconto sem porcentagem', () {
    expect(teste.caulcularDesconto(10000, 9500, false), 500);
  });
}



