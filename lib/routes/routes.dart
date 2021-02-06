import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:app_chat/pages/chat_page.dart';
import 'package:app_chat/pages/loading_page.dart';
import 'package:app_chat/pages/login_page.dart';
import 'package:app_chat/pages/register_page.dart';
import 'package:app_chat/pages/users_page.dart';


final Map<String, Widget Function(BuildContext)> appRoutes = {
  'login': ( _ ) => LoginPage(),
  'register': ( _ ) => RegisterPage(),
  'users': ( _ ) => UsersPage(),
  'chat': ( _ ) => ChatPage(),
  'loading': ( _ ) => LoadingPage()
};
