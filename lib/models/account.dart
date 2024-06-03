// ignore_for_file: public_member_api_docs, sort_constructors_first
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

  void transfer(amount) {
    balance = balance - amount;
  }
}
