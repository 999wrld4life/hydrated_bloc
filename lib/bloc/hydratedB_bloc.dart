import 'package:hydrated_bloc_implementation/bloc/hydrated_event.dart';
import 'package:hydrated_bloc_implementation/bloc/hydrated_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class HydratedbBloc extends HydratedBloc<HydratedEvent, HydratedState> {
  HydratedbBloc() : super(InitialState()) {
    on<IncrementEvent>(
      (event, emit) {
        emit(HydratedState(counter: state.counter + 1));
      },
    );
    on<DecrementEvent>(
      (event, emit) {
        emit(HydratedState(counter: state.counter - 1));
      },
    );
  }

  @override
  HydratedState? fromJson(Map<String, dynamic> json) {
    return HydratedState(counter: json['counter'] as int);
  }

  @override
  Map<String, dynamic>? toJson(HydratedState state) {
    return {'counter': state.counter};
  }
}
