import 'package:homate/pages/homate_favorites_page.dart';
import 'package:homate/pages/homate_profile_page.dart';
import 'package:homate/pages/homate_shoplist_page.dart';
import 'package:homate/pages/homate_wallet_page.dart';
import 'package:homate/pages/homate_login_page.dart';

// pages list for bottomBar
final List pages = [
  const HomateLoginPage(
    title: 'Homate',
  ),
  const WalletPage(),
  null, //bos navbar
  const HomateFavoritesPage(),
  const HomateProfilePage(),
  const HomateShopListPage()
];
