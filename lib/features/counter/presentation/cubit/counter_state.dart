// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class HomeState {
  final int count;
  HomeState({
    required this.count,
  });
}

class HomeStateInitial extends HomeState {
  HomeStateInitial() : super(count: 0);
}

class HomeStateIncremented extends HomeState {
  HomeStateIncremented(int count) : super(count: count);
}
