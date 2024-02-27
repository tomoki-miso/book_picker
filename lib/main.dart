import 'package:book_picker/features/auth/sign_in_confirm.dart';
import 'package:book_picker/features/init/page.dart';
import 'package:book_picker/firebase/firebase_options.dart';
import 'package:book_picker/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        home: MyApp(),
      ),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider.notifier);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Brightness Demo',
      theme: ThemeData(
        fontFamily: 'KiwiMaru',
      ),
      themeMode: themeMode.state,
      home: const HomePage(),
    );
  }
}
