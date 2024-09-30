import 'package:app_dalvina/features/counter/presentation/cubit/counter_state.dart';
import 'package:bloc/bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeStateInitial());

  void increment() => emit(HomeStateIncremented(state.count + 1));
}
