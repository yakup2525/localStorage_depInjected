import 'package:hive_flutter/hive_flutter.dart';

import '/core/core.dart';

abstract class IHiveManager {
  Box get human;
  Box get data;
  Box get eye;

  Future init();
  Future<void> close();
  Future<bool> boxExists({required String boxName});
  Future<void> removeBox({required String boxName});
}

final class HiveManager implements IHiveManager {
  @override
  Box get human => _human;
  late Box _human;

  @override
  Box get data => _data;
  late Box _data;

  @override
  Box get eye => _eye;
  late Box _eye;

  @override
  Future<HiveManager> init() async {
    //Hive'i projemize tanımladık ve kurduk
    await Hive.initFlutter();

    //Modellerimizi hive'e özel olarak tanıtmak için Hive.registerAdapter
    Hive.registerAdapter(HumanModelAdapterr());
    Hive.registerAdapter(EyeModelAdapter());

//Uygulamada tekrar kullancaksak boxları kapatmayı gerekli bulmuyorum
    _human = await Hive.openBox('hiveHumanBox');
    _data = await Hive.openBox('hiveDataBox');
    _eye = await Hive.openBox('hiveEyeBox');
    return this;
  }

  Future<void> boxInit(String boxName) async {
    await Hive.openBox(boxName);
  }
  // Box _box = Hive.box(boxName); ile açılan box gerekli yerde çağrılabilir.

  @override
  Future<void> close() async {
    await Hive.close();
  }

  @override
  Future<bool> boxExists({required String boxName}) async {
    return await Hive.boxExists(boxName);
  }

  @override
  Future<void> removeBox({required String boxName}) async {
    await Hive.deleteBoxFromDisk(boxName);
  }
}
