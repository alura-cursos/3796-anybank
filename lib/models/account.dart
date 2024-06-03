// ignore_for_file: public_member_api_docs, sort_constructors_first
class NullAmountException implements Exception {
  @override
  String toString() => "O valor não pode ser nulo";
}

class InsuficientAmountException implements Exception {
  @override
  String toString() => "Saldo insuficiênte para realizar a transferência";
}

class Account {
  final int id;
  final String name;
  final String cpf;
  double balance;

  Account({
    required this.id,
    required this.name,
    required this.cpf,
    required this.balance,
  });

  void transfer(double? amount) {
    if (amount == null) {
      throw NullAmountException();
    }

    if (amount > balance) {
      throw InsuficientAmountException();
    }

    if (amount <= balance && amount > 0) {
      balance = balance - amount;
    }
  }
}
