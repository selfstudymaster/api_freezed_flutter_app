import 'package:api_freezed_flutter_app/model/GoogleBooksAPIService.dart';
import 'package:api_freezed_flutter_app/view/MainViewModelData.dart';
import 'package:state_notifier/state_notifier.dart';

class MainViewModel extends StateNotifier<MainViewModelData> {
  MainViewModel() : super(MainViewModelData());

  void fetch(String keyword) {
    state = state.copyWith(viewModelState: MainViewModelState.loading);
    getBooks(keyword).then((res) {
      state = state.copyWith(
          response: res, viewModelState: MainViewModelState.normal);
    }).catchError((_) {
      state = state.copyWith(
          response: null, viewModelState: MainViewModelState.error);
    });
  }
}
