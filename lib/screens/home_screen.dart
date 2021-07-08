import 'package:demo_bloc/bloc/counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  _buildButton(String text, Function onPress) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 50,
        height: 50,
        child: ElevatedButton(
          onPressed: () => onPress(),
          style: ButtonStyle(),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    '${state.value}',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildButton(
                      '+',
                      () => context.read<CounterBloc>().add(CounterIncrement()),
                    ),
                    _buildButton(
                      '-',
                      () => context.read<CounterBloc>().add(CounterDecrement()),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
