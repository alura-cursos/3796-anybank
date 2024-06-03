import 'package:anybank/models/account.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Testa uma transferência", () {
    final Account account = Account(id: 123, name: "Beto", cpf: "123.123.123-22", balance: 100);

    account.transfer(100);

    expect(account.balance, 0);
  });
}