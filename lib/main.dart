import 'package:fetch_data_api/controller/provider_function.dart';
import 'package:fetch_data_api/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProviderFunctions())
      ],
      child: MaterialApp(
        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
