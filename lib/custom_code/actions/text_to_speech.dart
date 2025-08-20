// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_tts/flutter_tts.dart'; // ดึง Text to speech มาใช้

Future<String> textToSpeech(String text) async {
  final FlutterTts flutterTts = FlutterTts();

  // การกำหนดค่า Text to speech
  await flutterTts.setLanguage(
      "en-US"); // ภาษาอังกฤษเป็นภาษาอังกฤษ ใช้ "th-TH" สำหรับภาษาไทย
  await flutterTts.setPitch(1.0); // ตั้งค่าระดับเสียง (ค่าเริ่มต้น: 1.0)
  await flutterTts
      .setSpeechRate(0.2); // ตั้งค่าอัตราการพูด (0.5 ช้าลง 1.0 เป็นค่าเริ่มต้น)

  try {
    if (text.isNotEmpty) {
      await flutterTts.speak(text); // ใช้ Text to speech เพื่อพูดข้อความ
      return text; // ส่งคืนข้อความที่พูด
    } else {
      print("No text provided for TTS.");
      return "No text provided";
    }
  } catch (e) {
    print("Error in TTS: $e");
    return "Error in TTS: $e";
  }
}
