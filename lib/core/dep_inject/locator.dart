import 'package:get_it/get_it.dart';


import '/core/core.dart';

final GetIt getIt = GetIt.instance;
//late ISharedPreferencesManager sharedPreferencesManager;

Future<void> initLocator() async {



  // * Singleton

 
  getIt.registerSingletonAsync<IHiveManager>(() async => HiveManager().init());
  getIt.registerSingletonAsync<ISharedPreferencesManager>(() async => SharedPreferencesManager().init());

  await getIt.allReady();

  //sharedPreferencesManager = getIt<ISharedPreferencesManager>();


}
