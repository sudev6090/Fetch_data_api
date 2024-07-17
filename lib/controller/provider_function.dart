import 'dart:convert';

import 'package:fetch_data_api/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProviderFunctions extends ChangeNotifier{
  List<User> users =[];

  fetchMaleUsers() async {
     const url = 'https://randomuser.me/api/?results=10&gender=male';
     final uri =Uri.parse(url);
     final response = await http.get(uri);
     final body = response.body;
     final json = jsonDecode(body);
     final results = json['results'] as List<dynamic>;
    final transform = results.map((e) {
        return User(
        gender: e['gender'],
        email: e['email'],
        phone: e['phone'],
        cell: e['cell'],
        nat: e['nat'],
        image: e['picture']['thumbnail'],
      );
  }).toList();
  users = transform;
  notifyListeners();
}

  fetchFemaleUsers() async {
    const url = 'https://randomuser.me/api/?results=400&gender=female';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;
    final transform = results.map((e) {
      return User(
        gender: e['gender'],
        email: e['email'],
        phone: e['phone'],
        cell: e['cell'],
        nat: e['nat'],
        image: e['picture']['thumbnail'],
      );
    }).toList();
    users = transform;
    notifyListeners();
  }
}