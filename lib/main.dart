import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void openUrl() async {
    const uri = 'https://bdhalaqa.com/';
    final url = Uri.parse(uri);
    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        // mode: LaunchMode.externalApplication,
        mode: LaunchMode.externalApplication,

        webViewConfiguration: const WebViewConfiguration(
          enableJavaScript: true,
          enableDomStorage: true,
        ),
      );
    }
  }

  @override
  void initState() {
    openUrl();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BD-Halaqa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(),
      ),
    );
  }
}
