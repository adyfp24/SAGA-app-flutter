import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'konsultasi_event.dart';
part 'konsultasi_state.dart';

class KonsultasiBloc extends Bloc<KonsultasiEvent, KonsultasiState> {
  KonsultasiBloc() : super(KonsultasiInitial()) {
    on<KonsultasiEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
