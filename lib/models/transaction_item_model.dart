class TransactionItemModel {
  final String title;
  final String date;
  final double amount;
  final bool? isWithdrawal;

  const TransactionItemModel({
    required this.title,
    required this.date,
    required this.amount,
    this.isWithdrawal,
  });
}
