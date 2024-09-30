import 'package:app_dalvina/features/home/data/models/counter_model.dart';

class CounterDataSource {
  CounterModel getCounter() {
    return CounterModel(count: 5);
  }
}
