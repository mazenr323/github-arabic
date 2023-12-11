import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/project/newsapp.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'project/new_service.dart';
main() async {
  runApp(MaterialApp(
      home: newsapp(),
  ));
}
