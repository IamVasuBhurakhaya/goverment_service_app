import 'package:flutter/material.dart';
import 'package:goverment_service_app/screens/home/provider/home_provider.dart';
import 'package:goverment_service_app/utils/app_routes.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: Routes.routes,
      ),
    );
  }
}
