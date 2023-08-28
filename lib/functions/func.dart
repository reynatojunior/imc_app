import 'dart:convert';
import 'dart:io';
import 'package:imc_app/classes/Pessoas.dart';

String lerDados(String texto) {
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

double imc(double peso, double altura) {
  return (peso / ((altura * altura) / 10000));
}
