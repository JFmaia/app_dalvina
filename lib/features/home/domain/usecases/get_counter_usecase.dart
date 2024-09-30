import 'package:app_dalvina/features/home/domain/entities/counter_entity.dart';
import 'package:app_dalvina/features/home/domain/repositories/counter_repository.dart';

class GetCounterUseCase {
  final CounterRepository counterRepository;

  GetCounterUseCase(this.counterRepository);

  CounterEntity execute() {
    return counterRepository.getCounter();
  }
}
