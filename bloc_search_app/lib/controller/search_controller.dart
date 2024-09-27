import 'package:bloc_search_app/bloc/search_bloc.dart';
import 'package:bloc_search_app/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:searchapp/blocs/search_event.dart';
class MySearchController {
  final BuildContext context;

  MySearchController({required this.context});

  onChange(String value) {
    value = value.toLowerCase();
    List<String> listofNames =
        searchable.where((name) => name.toLowerCase().contains(value)).toList();
    if (value.isEmpty) {
      listofNames = [];
      context.read<SearchBloc>().add(SearchingEvent(listofNames));
    }
    context.read<SearchBloc>().add(SearchingEvent(listofNames));
  }
}
