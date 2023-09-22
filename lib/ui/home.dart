import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '/core/core.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String data = '';
  Color containerColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Dependency Local Storage'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            color: containerColor,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Center(
              child: Text(
                data,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            color: Colors.blueAccent.withOpacity(0.6),
            onPressed: () async {},
            child: const Text('Oku'),
          ),
          const SizedBox(
            width: 10,
          ),
          MaterialButton(
            color: Colors.blueAccent.withOpacity(0.6),
            onPressed: () {},
            child: const Text('Yaz'),
          ),
        ],
      ),
    );
  }
}

//Shared Pref
    //  getIt.get<ISharedPreferencesManager>().saveStringValue('key1', 'value');

  // data = getIt.get<ISharedPreferencesManager>().getStringValue('key1') ??'';



//Hive await kullanmaya gerek yok 


 //default veri tipleri key value olarak kullnaılabilir
 //box.put(key,value) (veri varsa günceller)
  // var dataBox = getIt.get<IHiveManager>().data;
  // dataBox.put('int', 4);
 
   // var dataBox = getIt.get<IHiveManager>().data;
  // data = dataBox.get('int').toString();
 



 
 
 //  box.add(item); //otomatik artan anahtarla kutuya öğe ekle
 //
  //  var humanBox = getIt.get<IHiveManager>().human;
  //             humanBox.add(
  //               HumanModel(
  //                 age: 21,
  //                 name: 'ismet',
  //                 surname: 'Süslü',
  //               ),
  //             );

  //  var humanBox = getIt.get<IHiveManager>().human;

  // data = humanBox.values.first.name;