abstract class HomeStates {}

class InitialHomeState extends HomeStates {}



class HomeGetPendingTripLoading extends HomeStates {}

class HomeGetPendingTripSuccess extends HomeStates {}

class HomeGetPendingTripFail extends HomeStates {
  final String? message;

  HomeGetPendingTripFail(this.message);
}


class HomeStartTripLoading extends HomeStates {}

class HomeStartTripSuccess extends HomeStates {}

class HomeStartTripFail extends HomeStates {
  final String? message;

  HomeStartTripFail(this.message);
}