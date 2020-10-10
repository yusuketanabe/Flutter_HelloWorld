import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

import 'package:hello_world/hello_model.dart';
import 'package:hello_world/styles/gradient.dart';
import 'package:hello_world/styles/greeting_style.dart';
import 'package:hello_world/styles/add_icon.dart';

// StateProviderをStateNotifierProviderに変更した。
// providerはimmutableで。なのでfinal。
final controllerProvider = StateNotifierProvider((_) => HelloModelController());
// Providerはmodelはいらない。Controllerだけでよし。↓
//final modelProvider = StateNotifierProvider((_) => HelloModel());

// HookWidgetで拡張する
class HelloView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // (*) useProviderをHookWidget内のbuildメソッドから呼び出す
    final helloState = useProvider(controllerProvider.state);
    final helloController = useProvider(controllerProvider);

    return Scaffold(
      body: Center(
        // グラデーション
        child: Container(
          decoration: BoxDecoration(
            gradient: gradient(),
          ),
          child: Center(
            child: Text(
              helloState.greeting,
              style: greeting_style(),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // actionはcontext.read(controllerProvider).hello();ではうまくいかなかった。
          helloController.hello();
          helloController.increment(); //カウントが変わってない => (*)で、できたー！
        },
        child: add_icon(),
        backgroundColor: Colors.lime,
      ),
    );
  }
}
