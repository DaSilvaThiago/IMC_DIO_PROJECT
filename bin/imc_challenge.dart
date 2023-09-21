import 'dart:io';
import 'package:imc_challenge/imc_challenge.dart';
import 'person.dart';

void main(List<String> arguments) {
try {
    print('Calculadora de IMC');
    stdout.write('Informe seu nome: ');
    var nome = stdin.readLineSync()!;
    
    stdout.write('Informe seu peso (em quilogramas): ');
    var peso = double.parse(stdin.readLineSync()!);

    stdout.write('Informe sua altura (em metros): ');
    var altura = double.parse(stdin.readLineSync()!);

    if (peso <= 0 || altura <= 0) {
      throw Exception('Peso e altura devem ser maiores que zero.');
    }

    var pessoa = Person(nome, peso, altura);
    var imc = calcularIMC(pessoa.getWeight(), pessoa.getHeight());
    var categoria = interpretarIMC(imc);

    print('Nome: ${pessoa.getName()}');
    print('Seu IMC é: $imc');
    print('Categoria: $categoria');
  } catch (e) {
    print('Erro: $e');
  }
}


