import 'package:app_dalvina/features/home/domain/entities/counter_entity.dart';

class CounterModel extends CounterEntity {
  CounterModel({required super.count});

  factory CounterModel.fromJson(Map<String, dynamic> map) {
    return CounterModel(count: map['count']);
  }
}
