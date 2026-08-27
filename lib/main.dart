import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const OkocimToolsApp());
}

class OkocimToolsApp extends StatelessWidget {
  const OkocimToolsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Outils Financiers',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF12141C)),
        useMaterial3: true,
      ),
      home: const OutilsScreen(),
    );
  }
}

class OutilsScreen extends StatefulWidget {
  const OutilsScreen({super.key});

  @override
  State<OutilsScreen> createState() => _OutilsScreenState();
}

class _OutilsScreenState extends State<OutilsScreen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadFlutterAsset('assets/outils.html');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF12141C),
      body: SafeArea(
        child: WebViewWidget(controller: _controller),
      ),
    );
  }
}