import 'package:flutter/material.dart';

import '../custom_button.dart';
import '../custom_input.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
              icon: Icons.mail_outline,
              keyboardType: TextInputType.emailAddress,
              placeholder: 'Ingrese su usuario',
              textController: emailCtrl),
          CustomInput(
            icon: Icons.vpn_key,
            placeholder: 'Ingrese su contraseña',
            textController: passwordCtrl,
            isPassword: true,
          ),
          CustomButton(
            label: 'Ingresar',
            onPressed: () {
              print(this.emailCtrl.text);
              print(this.passwordCtrl.text);
            },
          )
        ],
      ),
    );
  }
}