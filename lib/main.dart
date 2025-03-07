import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/home/home_binding.dart';
import 'package:numdao_finalproject/notify/notify_binding.dart';
import 'package:numdao_finalproject/notify/notify_page.dart';
import 'package:numdao_finalproject/signin/signin_binding.dart';
import 'package:numdao_finalproject/welcome/welcome_binding.dart';
import 'package:numdao_finalproject/home/home_page.dart';
import 'package:numdao_finalproject/signin/signin_page.dart';
import 'package:numdao_finalproject/welcome/welcome_page.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => GetMaterialApp(
      title: 'Good read App project',
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/', page: () => WelcomePage(), binding: WelcomeBinding()),
        GetPage(
            name: '/signin',
            page: () => SignInPage(),
            binding: SignInBinding()),
        GetPage(
          name: '/home',
          page: () => HomePage(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: '/notify',
          page: () => NotifyPage(),
          binding: NotifyBinding(),
        )
      ],
    ),
  ));
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
