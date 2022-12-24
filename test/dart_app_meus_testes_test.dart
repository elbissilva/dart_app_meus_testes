import 'package:dart_app_meus_testes/dart_app_meus_testes.dart' as teste;
import 'package:test/test.dart';

void main() {
  test('Caucular desconto com porcentagem', () {
    expect(teste.caulcularDesconto(10000, 20, true), 8000);
  });
   test('Caucular desconto sem porcentagem com preço igual a zero', () {
    expect(()=> teste.caulcularDesconto(0, 20, false),
    throwsA(TypeMatcher<ArgumentError>()));
  });
  //  test('Caucular desconto com desconto zerado', () {
  //   expect(teste.caulcularDesconto(10000, 0, true), 10000);
  // });
   test('Caucular desconto com esconto zerado recebendo type', () {
    expect(()=>teste.caulcularDesconto(10000, 0, true), throwsA(TypeMatcher<ArgumentError>()));
  });
      test('Caucular desconto desconto sem porcentagem', () {
    expect(teste.caulcularDesconto(10000, 9500, false), 500);
  });
}



