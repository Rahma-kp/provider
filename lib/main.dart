import 'package:counter/counter.dart';
import 'package:counter/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [ChangeNotifierProvider<Changes>(create:(_)=>Changes() )],
      child: const MaterialApp(debugShowCheckedModeBanner: false,
        home:  Counter(),
      ),
    );
  }
}