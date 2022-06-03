import 'package:flutter/material.dart';
import 'package:webview_flutter/routes/router.gr.dart';

final _appRouter = NewRouter();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Home Guard',
      routerDelegate: _appRouter.delegate(
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
