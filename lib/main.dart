import 'package:flutter/material.dart';
import 'package:login_page/creae_account.dart';
import 'package:login_page/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>ThemeProvider(),
      builder: (context,child){
        final provider=   Provider.of<ThemeProvider>(context);

        return MaterialApp(
          theme: provider.theme,
          home: const CreateAccountScreen(),
        );
      }
      // child: MaterialApp(
      //   theme:provider.theme,
      //   title: 'Flutter Demo',
      //   home: CreateAccountScreen(),
      //   debugShowCheckedModeBanner: false,
      // ),
    );
  }
}
