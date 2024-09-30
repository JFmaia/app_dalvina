import 'package:app_dalvina/features/home/presentation/cubit/home_state.dart';
import 'package:bloc/bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeStateInitial());
  void increment() => emit(HomeStateIncremented(state.counterModel.count + 1));
  void decrement() {
    if (state.counterModel.count > 0) {
      emit(HomeStateDecrement(state.counterModel.count - 1));
    }
    return;
  }
}
