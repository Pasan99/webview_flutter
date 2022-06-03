
import 'package:auto_route/annotations.dart';
import 'package:webview_flutter/pages/home_page.dart';
import 'package:webview_flutter/pages/splash_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashScreen, initial: true, path: ""),
    MaterialRoute(page: HomePage, initial: false, path: "/home"),
  ],
)
class $NewRouter {
}
