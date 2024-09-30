import 'package:app_dalvina/features/home/domain/entities/counter_entity.dart';

abstract class CounterRepository {
  CounterEntity getCounter();
}
