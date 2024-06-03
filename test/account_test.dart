import 'package:anybank/models/account.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Testes de transferência", (){
    test("Testa uma transferência", (){
      final Account account = Account(id: 123, name: "Beto", cpf: "123.123.123-22", balance: 100);

      account.transfer(100);

      expect(account.balance, 0);
    });
    test("Transfere valores negativos", (){
      final Account account = Account(id: 123, name: "Beto", cpf: "123.123.123-22", balance: 100);
      
      account.transfer(-100);

      expect(account.balance, 100);
    });
    test("Transfere qualquer coisa que não seja números", (){
      final Account account = Account(id: 123, name: "Beto", cpf: "123.123.123-22", balance: 100);
    });
    test("Transfere valor maior que disponível no balanço", (){
      final Account account = Account(id: 123, name: "Beto", cpf: "123.123.123-22", balance: 100);
      
      account.transfer(101);

      expect(account.balance, 100);

    });
    test("Transfere 0", (){
      final Account account = Account(id: 123, name: "Beto", cpf: "123.123.123-22", balance: 100);
      
      account.transfer(0);

      expect(account.balance, 100);
    });
    test("Transfere um valor nulo", (){
      final Account account = Account(id: 123, name: "Beto", cpf: "123.123.123-22", balance: 100);
      
      account.transfer(null);

      expect(account.balance, 100);
    });
  });
}