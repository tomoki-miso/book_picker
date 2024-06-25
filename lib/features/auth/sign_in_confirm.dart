import 'dart:io';

import 'package:book_picker/features/auth/sign_in_with_apple.dart';
import 'package:book_picker/features/auth/sign_in_with_google.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

class SignInConfirmPage extends StatelessWidget {
  const SignInConfirmPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(60)),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.6,
                width: MediaQuery.of(context).size.width * 0.6,
                child: Image.asset('assets/images/icon.png'),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: const Text(
                  '「ブクピク」に登録している場合はサインインを行います。\n「ブクピク」に登録していない場合は登録を行います。',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14),
                ),
              ),
              const Padding(padding: EdgeInsets.all(16)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: SignInButton(
                  Buttons.google,
                  onPressed: () async => signInWithGoogle(context),
                ),
              ),
              if (Platform.isIOS)
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SignInButton(
                    Buttons.apple,
                    onPressed: () async => signInWithApple(context),
                  ),
                ),
            ],
          ),
        ),
      );
}
