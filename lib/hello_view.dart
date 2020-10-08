import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:hello_world/hello_model.dart';
import 'package:hooks_riverpod/all.dart';

// StateProviderをStateNotifierProviderに変更した。
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
            gradient: LinearGradient(
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
              colors: [
                const Color(0xffe4a972).withOpacity(0.6),
                const Color(0xff9941d8).withOpacity(0.6),
              ],
              stops: const [
                0.0,
                1.0,
              ],
            ),
          ),
          child: Center(
            child: Text(
              helloState.greeting.toString(),
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
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
        child: Icon(
          Icons.add,
          color: Colors.black87,
        ),
      ),
    );
  }
}
