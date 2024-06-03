import 'package:anybank/models/account.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Testes de transferência", (){
    test("Testa uma transferência", (){});
    test("Transfere valores negativos", (){});
    test("Transfere qualquer coisa que não seja números", (){});
    test("Transfere valor maior que disponível no balanço", (){});
    test("Transfere 0", (){});
    test("Transfere um valor nulo", (){});
  });
}