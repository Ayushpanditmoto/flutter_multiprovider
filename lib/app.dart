import 'package:flutter/material.dart';
import 'package:provide/Provider/appModel.dart';
import 'package:provide/Provider/textModel.dart';
import 'package:provider/provider.dart';
import 'package:provide/Provider/restApi.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appModel = Provider.of<AppModel>(context);
    final textModel = Provider.of<TextModel>(context);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textModel.text,
            style: const TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  textModel.changed();
                },
                child: const Text('Change Text'),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  textModel.changed1();
                },
                child: const Text('Change Text1'),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  textModel.reset();
                },
                child: const Text('Reset Text'),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            'Counter: ${appModel.counter}',
            style: const TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  appModel.increment();
                },
                child: const Text('Increment'),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  appModel.decrement();
                },
                child: const Text('Decrement'),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  RestApi().get("https://jsonplaceholder.typicode.com/todos/1");
                },
                child: const Text('Get'),
              ),
            ],
          ),
          // const Text('You have pushed the button this many times:'),
          // Consumer<AppModel>(
          //   builder: (context, appModel, child) {
          //     return Text(
          //       '${appModel.counter}',
          //       style: Theme.of(context).textTheme.headline4,
          //     );
          //   },
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     ElevatedButton(
          //       onPressed: () {
          //         context.read<AppModel>().increment();
          //       },
          //       child: const Icon(Icons.add),
          //     ),
          //     ElevatedButton(
          //       onPressed: () {
          //         context.read<AppModel>().decrement();
          //       },
          //       child: const Icon(Icons.remove),
          //     ),
          //   ],
          // ),
          // Consumer<TextModel>(
          //   builder: ((context, textModel, child) => Text(
          //         textModel.text,
          //         style: Theme.of(context).textTheme.headline4,
          //       )),
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     ElevatedButton(
          //       onPressed: () {
          //         context.read<TextModel>().changed();
          //       },
          //       child: const Text('Change'),
          //     ),
          //     ElevatedButton(
          //       onPressed: () {
          //         context.read<TextModel>().changed1();
          //       },
          //       child: const Text('Change1'),
          //     ),
          //     ElevatedButton(
          //       onPressed: () {
          //         context.read<TextModel>().reset();
          //       },
          //       child: const Text('Reset'),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
