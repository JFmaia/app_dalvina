import 'package:app_dalvina/features/home/presentation/cubit/home_cubit.dart';
import 'package:app_dalvina/features/home/presentation/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final cubit = HomeCubit();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => cubit,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) => Text(
                  '${state.counterModel.count}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: cubit.increment,
                tooltip: 'Increment',
                backgroundColor: Colors.green[200],
                child: const Icon(Icons.plus_one),
              ),
              const SizedBox(
                width: 12,
              ),
              FloatingActionButton(
                onPressed: cubit.decrement,
                tooltip: 'Decrement',
                backgroundColor: Colors.red[200],
                child: const Icon(Icons.exposure_minus_1_outlined),
              ),
            ],
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
