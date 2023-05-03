import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// API key from provider
String apiKey = "UXgl8puRSSRStxnynmEGWg==JkyT8mDJrkSOhcZZ";
String apiUrl = 'https://api-ninjas.com/api/country';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) :super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  TextEditingController textEditingController = TextEditingController();
  String _value = "";
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Country App',
      home : Scaffold(
      appBar: AppBar(
        title : const Text ('Country APP'),
      ),
      body: Center (
        child: Column(
          children: [
            const Text(
              "Enter your country name below",
            ),
            TextField(controller: textEditingController,),
            ElevatedButton(onPressed: _pressMe,  child: const Text("Load Country")),
            Text(_value)
          
          ],
        ),
      ),
      ),
    );    
  }
  void _pressMe(){
    // ignore: avoid_print
    print('Hello World');
    setState(() {
      _value = textEditingController.text;
    });
  }
}
