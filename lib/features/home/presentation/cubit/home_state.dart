// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_dalvina/features/home/data/models/counter_model.dart';

abstract class HomeState {
  final CounterModel counterModel;
  HomeState({
    required this.counterModel,
  });
}

class HomeStateInitial extends HomeState {
  HomeStateInitial() : super(counterModel: CounterModel(count: 0));
}

class HomeStateIncremented extends HomeState {
  HomeStateIncremented(int count)
      : super(counterModel: CounterModel(count: count));
}

class HomeStateDecrement extends HomeState {
  HomeStateDecrement(int count)
      : super(counterModel: CounterModel(count: count));
}

class HomeStateFetch extends HomeState {
  HomeStateFetch(int count) : super(counterModel: CounterModel(count: count));
}
