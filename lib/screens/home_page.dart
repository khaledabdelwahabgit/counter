import 'package:counter/models/counter_fun.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int value = Counter().counter;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Counter',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (value > 0) {
                      value--;
                    } else {
                      value = 0;
                    }
                  });
                },
                child: const Icon(Icons.remove),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                '$value',
                style:
                    const TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 20),
              FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      value++;
                    });
                  },
                  child: const Icon(Icons.add)),
            ],
          ),
          const SizedBox(height: 10),
          ElevatedButton.icon(
              style: const ButtonStyle(iconSize: MaterialStatePropertyAll(50)),
              onPressed: () {
                setState(() {
                  value = 0;
                });
              },
              icon: const Icon(Icons.settings_backup_restore_rounded),
              label: const Text('reset'))
        ],
      ),
    );
  }
}



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
//       ), 
//     );
//   }
// }