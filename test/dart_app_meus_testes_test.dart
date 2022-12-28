//import 'dart:html';

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

   test('Converter string', () {
    expect(teste.converter("jose, maria"),equals("JOSE, MARIA"));
  });

   test('Converter string TESTE2', () {
    expect(teste.converter("jose, maria"),equalsIgnoringCase("jose, maria"));
  });

  test('Converter string TESTE3', () {
    expect(teste.converter("jose"),startsWith("J"));
  });

  test('Compar valor', () {
    expect(teste.retornaValor(50),equals(50));
  });

   test('Compar valor2', () {
    expect(teste.retornaValor(50), isNot(equals(5)));
  });



 
}




