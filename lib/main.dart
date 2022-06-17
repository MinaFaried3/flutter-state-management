import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/dashboard.dart';
import 'package:state_management/setState/dashboard.dart';

import 'bloc/cubit/counter_cubit.dart';
import 'bloc/ui/dashboard.dart';
import 'getx/controller/getx.dart';
import 'getx/view/dashboard.dart';
import 'provider/provider_class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(GetXCounter());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: ChangeNotifierProvider<MyProvider>(
      //   create: (_) => MyProvider(),
      //   child: const CounterProvider(),
      // ),
      home: BlocProvider(
          create: (_) => CounterCubit(), child: const MainCounterBloc()),
    );
  }
}

// cubit

class MainCounterBloc extends StatelessWidget {
  const MainCounterBloc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: const DashBoardCubit(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterCubit>().increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
} //GetX

class CounterGetX extends StatelessWidget {
  CounterGetX({Key? key}) : super(key: key);
  // get counter => Get.find();
  final GetXCounter counter = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: const DashBoardGetX(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.increment();
          counter.incrementObs();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

// provider
class CounterProvider extends StatelessWidget {
  const CounterProvider({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: const DashBoardProvider(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // we make listen false because we don't want to rebuild the whole widget tree
          Provider.of<MyProvider>(context, listen: false).increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

//setState()
class CounterPro extends StatefulWidget {
  const CounterPro({Key? key}) : super(key: key);

  @override
  State<CounterPro> createState() => _CounterProState();
}

class _CounterProState extends State<CounterPro> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: DashBoard(count),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
