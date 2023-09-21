import 'package:imc_challenge/imc_challenge.dart' as drt;
import 'package:test/test.dart';

import '../bin/person.dart';


void main() {
  test('Teste de cálculo de IMC', () {
    // Teste para calcularIMC
    expect(drt.calcularIMC(70, 1.75), equals(22.86));
    expect(drt.calcularIMC(80, 1.65), equals(29.39));
    expect(drt.calcularIMC(50, 1.70), equals(17.31));
    expect(drt.calcularIMC(100, 1.60), equals(39.07));
  });

  test('Teste de interpretação de IMC', () {
    // Teste para interpretarIMC
    expect(drt.interpretarIMC(16), equals('Abaixo do peso'));
    expect(drt.interpretarIMC(20), equals('Peso normal'));
    expect(drt.interpretarIMC(27), equals('Sobrepeso'));
    expect(drt.interpretarIMC(32), equals('Obesidade Grau 1'));
    expect(drt.interpretarIMC(38), equals('Obesidade Grau 2'));
    expect(drt.interpretarIMC(42), equals('Obesidade Grau 3'));
  });

  test('Teste de métodos da classe Person', () {
    // Teste para métodos da classe Person
    var pessoa = Person('João', 70, 1.75);
    expect(pessoa.getName(), equals('João'));
    expect(pessoa.getWeight(), equals(70));
    expect(pessoa.getHeight(), equals(1.75));
  });
}



