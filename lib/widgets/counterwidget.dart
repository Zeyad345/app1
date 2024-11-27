import 'package:app1/cubits/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Notewidget extends StatelessWidget {
  Notewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => CounterCubit(),
        child: BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text("Counter Now is : ${BlocProvider.of<CounterCubit>(context).counter}"),
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).increase();
                        },
                        child: Text("1")),
                    SizedBox(
                      width: 50,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).decrease();
                        },
                        child: Text("2")),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
