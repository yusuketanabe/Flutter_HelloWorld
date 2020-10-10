import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
// ↓ partを指定
part 'hello_model.freezed.dart';

@freezed
abstract class HelloModel with _$HelloModel {
  factory HelloModel({
    @Default('初めまして') String greeting,
    @Default(0) int count,
  }) = _HelloModel;
}
// >> flutter pub run build_runner build => コマンドラインでスクリプトを走らせて **.freezed.dartファイル生成

// Model controller: StateNotifierはstate変数しか状態(ここではHelloModel)を持てない
class HelloModelController extends StateNotifier<HelloModel> {
  HelloModelController() : super(HelloModel());
  // countによって表示を切り替えるメソッド
  hello() {
    state.count.isOdd
        ? state = state.copyWith(greeting: 'hello')
        : state = state.copyWith(greeting: 'こんにちは');
  }

  // countをインクリメントするメソッド
  increment() {
    state = state.count >= 10
        ? state.copyWith(count: 1)
        : state.copyWith(count: state.count + 1);
  }
}
