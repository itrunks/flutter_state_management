part of 'color_cubit.dart';

@immutable
abstract class ColorState {
  final Color color;
  const ColorState(this.color);
}

class ColorInitial extends ColorState {
  const ColorInitial(Color color) : super(color);
}
