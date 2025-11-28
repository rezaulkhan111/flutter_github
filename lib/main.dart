import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github/presentation/github_vm.dart';
import 'package:flutter_github/presentation/ui/search_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true, // Set to false for production
      builder: (context) => MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => GithubVM())],
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: SearchScreen(),
    );
  }
}
