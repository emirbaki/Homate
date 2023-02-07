import 'package:homate/models/shop_model.dart';

import 'user_model.dart';

class Comment {
  final int commentID;
  final String content;
  final User user;
  final DateTime dateTime;

  Comment(
    this.commentID,
    this.content,
    this.user,
    this.dateTime,
  );
}
