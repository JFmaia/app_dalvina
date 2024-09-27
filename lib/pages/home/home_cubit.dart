import 'package:app_dalvina/pages/home/home_state.dart';
import 'package:bloc/bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeStateInitial());

  void increment() => emit(HomeStateIncremented(state.count + 1));
}
