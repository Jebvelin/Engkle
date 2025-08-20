import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _userName = '';
  String get userName => _userName;
  set userName(String value) {
    _userName = value;
  }

  String _result = '';
  String get result => _result;
  set result(String value) {
    _result = value;
  }

  int _scoreSchool = 0;
  int get scoreSchool => _scoreSchool;
  set scoreSchool(int value) {
    _scoreSchool = value;
  }

  int _scoreFood = 0;
  int get scoreFood => _scoreFood;
  set scoreFood(int value) {
    _scoreFood = value;
  }

  int _scoreAnimal = 0;
  int get scoreAnimal => _scoreAnimal;
  set scoreAnimal(int value) {
    _scoreAnimal = value;
  }

  int _scoreMovies = 0;
  int get scoreMovies => _scoreMovies;
  set scoreMovies(int value) {
    _scoreMovies = value;
  }

  int _scoreFamily = 0;
  int get scoreFamily => _scoreFamily;
  set scoreFamily(int value) {
    _scoreFamily = value;
  }

  int _scoreJobs = 0;
  int get scoreJobs => _scoreJobs;
  set scoreJobs(int value) {
    _scoreJobs = value;
  }

  int _scoreSports = 0;
  int get scoreSports => _scoreSports;
  set scoreSports(int value) {
    _scoreSports = value;
  }

  int _scoreBody = 0;
  int get scoreBody => _scoreBody;
  set scoreBody(int value) {
    _scoreBody = value;
  }

  int _randomPage = 0;
  int get randomPage => _randomPage;
  set randomPage(int value) {
    _randomPage = value;
  }

  int _wordCount = 0;
  int get wordCount => _wordCount;
  set wordCount(int value) {
    _wordCount = value;
  }

  List<int> _usedNumbers = [];
  List<int> get usedNumbers => _usedNumbers;
  set usedNumbers(List<int> value) {
    _usedNumbers = value;
  }

  void addToUsedNumbers(int value) {
    usedNumbers.add(value);
  }

  void removeFromUsedNumbers(int value) {
    usedNumbers.remove(value);
  }

  void removeAtIndexFromUsedNumbers(int index) {
    usedNumbers.removeAt(index);
  }

  void updateUsedNumbersAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    usedNumbers[index] = updateFn(_usedNumbers[index]);
  }

  void insertAtIndexInUsedNumbers(int index, int value) {
    usedNumbers.insert(index, value);
  }
}
