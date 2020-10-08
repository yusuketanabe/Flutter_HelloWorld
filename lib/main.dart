import 'package:flutter/material.dart';
import 'package:hello_world/hello_view.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

// RiverpodはProviderScope()をrootで呼び出す。
void main() => runApp(ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.lime,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HelloView(),
      );
}
