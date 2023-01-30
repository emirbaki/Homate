import 'package:flutter/material.dart';

class CardModel {
  String accNumber;
  bool transfer;
  String cardProvider;
  String cardOwner;
  int cardNumber;
  String balance;
  Color bgColor;
  Color fontColor;

  String validThru;
  final Function bottomBarVisibilityFunction;

  CardModel(
    this.accNumber,
    this.validThru,
    this.transfer,
    this.cardProvider,
    this.cardOwner,
    this.cardNumber,
    this.balance,
    this.bgColor,
    this.fontColor,
    this.bottomBarVisibilityFunction,
  );
}
