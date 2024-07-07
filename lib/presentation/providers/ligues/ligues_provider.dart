import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:soccer_app/models/league/league_model_response.dart';

class LiguesProvider extends ChangeNotifier {
 final dio = Dio();

 String baseUrl = 'https://soccer.sportmonks.com/api/v2.0';
 String apiToken = 'w9Bj7lQfiiSM7epC3Ht567D9IpvhTzqWkIV15HDZ5BTgow9gosYR8mTApKDA';
 
 List<League> allLeagues = [];

 Future<void> getAllLigues()async{
  try {
    final response = await dio.get(
      "$baseUrl/leagues?api_token=$apiToken"
    );

    if (response.statusCode == 200) {
      final res = LeaguesResponse.fromJson(response.data);
      allLeagues.addAll(res.data);
      notifyListeners();
    }

  } catch (e) {
    print(e); 
  }
 }


}