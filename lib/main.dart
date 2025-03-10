import 'package:flutter/material.dart';

void main(){
  runApp( MyApp() );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new HomeScreen()
    );
    throw UnimplementedError();
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Judo To Go"),
        backgroundColor: Colors.blue,
      ),
      body: new Align(
        alignment: Alignment.topCenter,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new QuizScreen()),
            );
          },
          child: new Text('Quiz')
        ),
      ),
    );
  }
}


//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           title: const Text('Judo To Go')
//         ),
//         body: ElevatedButton(
//             child: Text('Quiz'),
//             onPressed: () {
//                 Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (_) => QuizScreen(),
//                 ),
//               );
//             },
//         ),
//       ),
//     );
//   }
// }


// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   int counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           title: const Text('Judo To Go')
//         ),
//         floatingActionButton: FloatingActionButton(
//             child: Icon(Icons.check),
//             onPressed: (){
//               setState(() {
//                 counter++;
//               });
//               print('printing pressed...');
//             }),
//         bottomNavigationBar: BottomNavigationBar(
//             items: const [
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.home),
//                   label: 'Home'),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.business),
//                   label: 'Business'),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.school),
//                   label: 'School')
//             ]
//         ),
//         drawer: Drawer(
//           child: Text('Yo'),
//         ),
//         body: ElevatedButton(
//             child: Text('Navigate'),
//             onPressed: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (_) => AboutScreen(),
//                   ),
//               );
//             },
//         ),
//       ),
//     );
//   }
// }

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Quiz')
      ),
    );
  }
}