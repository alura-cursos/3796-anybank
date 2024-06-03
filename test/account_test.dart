import 'package:anybank/models/account.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Account account;

  setUp(() {
    account = Account(id: 123, name: "Beto", cpf: "123.123.123-22", balance: 100);
  });
  group("Testes de transferência", (){
    test("Testa uma transferência", (){
      account.transfer(100);

      expect(account.balance, 0);
    });
    test("Transfere valores negativos", (){
      expect(() => account.transfer(0), throwsA(isA<InvalidAmountException>()));
      expect(() => account.transfer(-100), throwsA(isA<InvalidAmountException>()));
    });
    test("Transfere qualquer coisa que não seja números", (){
    });
    test("Transfere valor maior que disponível no balanço", (){
      expect(() => account.transfer(101), throwsA(isA<InsuficientAmountException>()));
    });
    test("Transfere um valor nulo", (){
      expect(() => account.transfer(null), throwsA(isA<NullAmountException>()));
    });
  });
}