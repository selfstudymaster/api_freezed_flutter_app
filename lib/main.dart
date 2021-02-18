import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:state_notifier_test/model/GoogleBookResponse.dart';
import 'package:state_notifier_test/model/GoogleBooksResponse.dart';
import 'package:state_notifier_test/view/MainViewModel.dart';
import 'package:state_notifier_test/view/MainViewModelData.dart';
import 'package:url_launcher/url_launcher.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Book State Notifier Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StateNotifierProvider<MainViewModel, MainViewModelData>(
        create: (_) => MainViewModel(),
        child: MyHomePage(title: 'Google Book State Notifier Sample'),
      ),
    );
  }
}

final response = context
    .select<MainViewModelData, GoogleBooksResponse>((data) => data.response);
final state = context.select<MainViewModelData, MainViewModelState>(
    (data) => data.viewModelState);
final List<GoogleBookResponse> bookList =
    response != null ? response.items : [];
