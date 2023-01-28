import "package:flutter/material.dart";
import "package:homate/widgets/card_widget.dart";

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  bool _bottomNavBarVisible = true;
  int _transferIndex = 0;
  String _cardProviderTransfer = "Mastercard";
  int _cardNumberTransfer = 7065447803090891;
  String _balanceTransfer = "0.00";
  Color _bgColorTransfer = Colors.white;
  Color _fontColorTransfer = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CardBuild(
          transfer: true,
          cardProvider: 'Emir Baki Demirci',
          cardNumber: 15213214124,
          balance: '1500',
          bgColor: const Color.fromARGB(255, 255, 113, 113),
          fontColor: const Color.fromARGB(255, 255, 255, 255),
          bottomBarVisibilityFunction: _bottomBarVisibility,
          validThru: '10/27'),
    );
  }

  void _bottomBarVisibility(
    bool enabled,
    String cardProvider,
    int cardNumber,
    String balance,
    Color bgColor,
    Color fontColor,
  ) {
    setState(() {
      _bottomNavBarVisible = enabled;
      _cardProviderTransfer = cardProvider;
      _cardNumberTransfer = cardNumber;
      _balanceTransfer = balance;
      _bgColorTransfer = bgColor;
      _fontColorTransfer = fontColor;
    });
  }
}
