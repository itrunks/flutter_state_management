import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/cubit/color_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => ColorCubit(),
        child: BlocBuilder<ColorCubit, ColorState>(
          builder: (context, state) {
            return Container(color: state.color);
          },
        ),
      ),
    );
  }
}
