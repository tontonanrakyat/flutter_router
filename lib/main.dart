import 'package:flutter/material.dart';
import 'package:flutter_router/router.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Get.key,
      initialRoute: "/",
      navigatorObservers: [
        GetObserver(MiddleWare.observer),
      ],
      onGenerateRoute: Router.generateRoute,
    );
  }
}

class MiddleWare {
  static observer(Routing routing) {
    ///Trigger any event when a route is pushed or popped by Get.
    /// You can listen in addition to the routes, the snackbars, dialogs and bottomsheets on each screen.
    ///If you need to enter any of these 3 events directly here,
    ///you must specify that the event is != Than you are trying to do.
    if (routing.current == '/third' && !routing.isSnackbar) {
      // Get.snackbar(
      //   "Hi",
      //   "You are on third route",
      //   snackPosition: SnackPosition.BOTTOM,
      // );

    } else if (routing.current == '/second') {
      print('print from second route');
    }
  }
}
