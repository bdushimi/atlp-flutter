import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:to_do/app/data/services/storage/repository.dart';

class HomeController extends GetxController {
  TaskRepository taskRepository;

  HomeController({required this.taskRepository});
}
