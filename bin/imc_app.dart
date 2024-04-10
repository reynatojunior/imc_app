import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:imc_app/functions/func.dart';
import 'package:imc_app/classes/Pessoas.dart';

void main(List<String> arguments) {
  print("Bem vindos a nossa calculadora de IMC");

  Pessoas p1 = Pessoas();

  p1.nome = lerDados("Informe seu nome:");

  try {
    p1.altura = double.parse(lerDados("Informe sua altura em cm"));
    p1.peso = double.parse(lerDados("Informe seu peso em KG"));
  } catch (e) {
    print("Caracter invalido, entre apenas com valores numericos!");
  }

  var result = imc(p1.peso, p1.altura);

  print("Olá bom dia " + p1.nome);
  print("seu imc real é: $result");

  if (result < 16) {
    print("Magreza Grave");
  } else if (result < 17 && result >= 16) {
    print("Magreza Moderada");
  } else if (result < 18.25 && result >= 17) {
    print("Magreza Leve");
  } else if (result < 25 && result >= 18.25) {
    print("Está saudável");
  } else if (result < 30 && result >= 25) {
    print("Esta com sobrepeso");
  } else if (result < 35 && result >= 30) {
    print("Esta com Obesidade grau I");
  } else if (result < 40 && result >= 35) {
    print("Esta com Obesidade grau II (severa)");
  } else if (result >= 40) {
    print("Obesidade Grau III (morbida)");
  }
}
