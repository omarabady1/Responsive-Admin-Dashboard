class CardModel {
  final String holderName;
  final String cardNumber;
  final String expiredDate;
  final String cvv;

  const CardModel({
    required this.holderName,
    required this.cardNumber,
    required this.expiredDate,
    required this.cvv,
  });
}
