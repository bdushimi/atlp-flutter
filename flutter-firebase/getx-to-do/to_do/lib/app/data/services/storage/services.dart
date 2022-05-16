import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:to_do/app/core/utils/keys.dart';

class StorageService extends GetxService {
  late GetStorage _box;
  Future<StorageService> init() async {
    _box = GetStorage();

    // If there is no data in the storage, we will create a new one with empty data.
    await _box.writeIfNull(taskKey, []);
    return this;
  }

 // T is a Generic type
  T read<T>(String key) {
    return _box.read(key);
  }

  // Dynamic is a data type that indicates all data types in dart
  void write(String key, dynamic value) async{
    await _box.write(key, value);
  }
}
