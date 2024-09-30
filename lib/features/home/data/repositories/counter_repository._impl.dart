import 'package:app_dalvina/features/home/data/datasources/counter_datasource.dart';
import 'package:app_dalvina/features/home/data/models/counter_model.dart';
import 'package:app_dalvina/features/home/domain/repositories/counter_repository.dart';

class CounterRepositoryImpl implements CounterRepository {
  final CounterDataSource counterDataSource;

  CounterRepositoryImpl(this.counterDataSource);

  @override
  CounterModel getCounter() {
    return counterDataSource.getCounter();
  }
}
