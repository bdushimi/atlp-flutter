
import 'package:get/get.dart';
import 'package:to_do/app/data/provider/task/provider.dart';
import 'package:to_do/app/data/services/storage/repository.dart';
import 'package:to_do/app/modules/home/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(
      taskRepository: TaskRepository(
        taskProvider: TaskProvider()
      ),
    ));
  }

}