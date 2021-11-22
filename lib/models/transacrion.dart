class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime add_date;
  Transaction(
      {required this.id,
      required this.title,
      required this.amount,
      required this.add_date});
}
