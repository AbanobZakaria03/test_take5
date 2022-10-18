import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'package:meta/meta.dart';

part 'internet_event.dart';
part 'internet_state.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  StreamSubscription? _subscription;
  InternetBloc() : super(InternetInitial()) {
    on<InternetEvent>((event, emit) {
      if (event is ConnectedEvent) {
        emit(ConnectedState(message: "Connected"));
      } else if (event is NotConnectedEvent) {
        emit(NotConnectedState(message: "Not Connected"));
      }
    });
    _subscription = InternetConnectionChecker()
        .onStatusChange
        .listen((InternetConnectionStatus result) {
          print(result);
      if (result == InternetConnectionStatus.connected){
        add(ConnectedEvent());
      } else {
        add(NotConnectedEvent());
      }
    });
  }
  @override
  Future<void> close() {
  _subscription!.cancel();
    return super.close();
  }
}
