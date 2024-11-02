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
                  // const SizedBox(height: 16, width: 16,),
                  // Image.network(
                  //   'https://picsum.photos/id/164/300/200',
                  //   fit: BoxFit.cover,
                  //   height: 300,
                  //   width: 150,
                  // )
                  // const SizedBox(height: 16, width: 16,),
                  // Image.network(
                  //   'https://picsum.photos/id/174/300/200',
                  //   fit: BoxFit.cover,
                  //   height: 300,
                  //   width: 150,
                  // )
                ],
              ))

            ],

          ),
        ),
      ),
    );

  }
}

