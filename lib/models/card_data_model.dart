class CardDataModel {
  String accNumber;

  String cardProvider;
  String cardOwner;
  int cardNumber;
  String balance;

  String validThru;

  CardDataModel(
    this.accNumber,
    this.validThru,
    this.cardProvider,
    this.cardOwner,
    this.cardNumber,
    this.balance,
  );
}
