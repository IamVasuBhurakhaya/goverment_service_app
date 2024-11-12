import 'package:flutter/material.dart';
import 'package:goverment_service_app/screens/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeProvider homeProviderW;
  late HomeProvider homeProviderR;
  @override
  void initState() {
    context.read<HomeProvider>().checkConnection();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    homeProviderW = context.watch<HomeProvider>();
    homeProviderR = context.read<HomeProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aadhaar App'),
      ),
      body: (homeProviderW.isConnect)
          ? const Center(
              child: FlutterLogo(
              size: 40,
            ))
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
