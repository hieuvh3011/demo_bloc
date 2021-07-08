import 'package:bloc/bloc.dart';
import 'package:demo_bloc/bloc/app_observer.dart';
import 'package:demo_bloc/bloc/counter/counter_bloc.dart';
import 'package:demo_bloc/screens/main_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = AppObserver();
  runApp(DemoBlocApp());
}

class DemoBlocApp extends StatelessWidget {
  const DemoBlocApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CounterBloc())
      ],
      child: MaterialApp(
        routes: MainRoute.getRoute(),
      ),
    );
  }
}
