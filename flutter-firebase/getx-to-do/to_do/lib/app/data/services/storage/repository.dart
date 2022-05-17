// The Repository invokes methods exposed by the Provider to the whole application / client.
// Throughout the application, we gonna invoke methods exposed by the repository.
// 

import 'package:to_do/app/data/models/task.dart';
import 'package:to_do/app/data/provider/task/provider.dart';

class TaskRepository {
  TaskProvider taskProvider;

  TaskRepository({required this.taskProvider});

  List<Task> readTasks() => taskProvider.readTasks();
  void writeTasks(List<Task> tasks) => taskProvider.writeTasks(tasks);
}
