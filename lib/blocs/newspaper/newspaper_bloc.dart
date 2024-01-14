import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'newspaper_event.dart';
part 'newspaper_state.dart';

class NewspaperBloc extends Bloc<NewspaperEvent, NewspaperState> {
  NewspaperBloc() : super(NewspaperInitial()) {
    on<NewspaperEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
