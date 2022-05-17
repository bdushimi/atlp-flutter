// The Provider invokes methods exposed by the services and 
// does necessary data transformations to 
// return / save data in a desired format

import 'dart:convert';
import 'package:get/get.dart';
import 'package:to_do/app/core/utils/keys.dart';
import 'package:to_do/app/data/models/task.dart';
import 'package:to_do/app/data/services/storage/services.dart';

class TaskProvider {
  final StorageService _storageService = Get.find<StorageService>();

  List<Task> readTasks() {
    var tasks = <Task>[];
    jsonDecode(_storageService.read(taskKey)).forEach((task) {
      tasks.add(Task.fromJson(task));
    });
    return tasks;
  }

  void writeTasks(List<Task> tasks) {
    _storageService.write(taskKey, jsonEncode(tasks));
  }
}
