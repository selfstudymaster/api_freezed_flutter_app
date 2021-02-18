import 'package:api_freezed_flutter_app/model/GoogleBookResponse.dart';
import 'package:api_freezed_flutter_app/model/GoogleBooksResponse.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'MainViewModelData.freezed.dart';

enum MainViewModelState { normal, loading, error }

@freezed
abstract class MainViewModelData with _$MainViewModelData {
  const factory MainViewModelData(
      {GoogleBooksResponse response,
      MainViewModelState viewModelState}) = _MainViewModelData;
}
