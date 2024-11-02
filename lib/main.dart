import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'City Tour',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: HomeScreen (),
    );
  }
}

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Scaffold(
        appBar: AppBar(
          title: Text("City Tour"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 16, width: 16,),
              SingleChildScrollView(child: Row(
                children: [
                  const SizedBox(height: 16, width: 16,),
                  Image.network(
                    'https://picsum.photos/id/162/300/200',
                    fit: BoxFit.cover,
                    height: 300,
                    width: 150,
                  )
                  const SizedBox(height: 16, width: 16,),
                  Image.network(
                    'https://picsum.photos/id/164/300/200',
                    fit: BoxFit.cover,
                    height: 300,
                    width: 150,
                  )
                  SizedBox(height: 16, width: 16,),
                  Image.network(
                    'https://picsum.photos/id/174/300/200',
                    fit: BoxFit.cover,
                    height: 300,
                    width: 150,
                  )
                ],
              ))

            ],

          ),
        ),
      ),
    );

  }
}


// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
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
