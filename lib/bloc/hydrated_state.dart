class HydratedState {
  final int counter;
  HydratedState({required this.counter});
}

class InitialState extends HydratedState {
  InitialState({super.counter = 0});
}
