// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:speech_to_text/speech_to_text.dart'
    as stt; // ดึง Speech to text มาใช้

// ประกาศอินสแตนซ์ส่วนกลางสำหรับ SpeechToText เพื่อหลีกเลี่ยงการสร้างอินสแตนซ์ใหม่ทุกครั้ง
stt.SpeechToText _speechToText =
    stt.SpeechToText(); // อินสแตนซ์เพื่อปรับปรุงประสิทธิภาพ

Future<String?> speechToText(String correctWord) async {
  // ตรวจสอบว่า CorrectWord ว่างเปล่าก่อนดำเนินการต่อ
  if (correctWord.isEmpty) {
    // ตรวจสอบช่องว่างของคำที่ถูกต้อง
    print("Correct word is empty!");
    return null; // ออกก่อนกำหนดหากคำที่ถูกต้องไม่ถูกต้อง
  }

  // เริ่มต้นอินสแตนซ์ SpeechToText
  bool isSpeechAvailable = await _speechToText.initialize();

  // ตรวจสอบว่าคำพูดเป็นข้อความพร้อมใช้งานหรือไม่
  if (!isSpeechAvailable) {
    print('Speech-to-Text is not available.');
    return null; // ส่งคืนค่า null ถ้าบริการแปลงคำพูดเป็นข้อความไม่พร้อมใช้งาน
  }

  String recognizedText = ''; // ตัวแปรสำหรับจัดเก็บข้อความที่รู้จัก

  // เริ่มฟังเสียงพูด
  await _speechToText.listen(
    onResult: (result) {
      recognizedText = result.recognizedWords;
      print('Recognized text: $recognizedText');
    },
    localeId:
        'en-US', // ตั้งค่าภาษาเป็นภาษาอังกฤษ (สามารถเปลี่ยนเป็น 'th-TH' สำหรับภาษาไทยได้)
  );

  //  รอให้การป้อนคำพูดเสร็จสิ้นโดยใช้เวลาหมดเวลาที่กำหนด
  await Future.delayed(const Duration(seconds: 8)); // ปรับระยะเวลาในการฟัง

  // ฟังก์ชันหยุดการฟังเสียง
  await _speechToText.stop();

  // ฟังก์ชันการส่งค่าไปเก็บไว้ใน action output
  if (custom_compare(correctWord, recognizedText)) {
    print("Correct word recognized: $recognizedText $correctWord");
    return "เยี่ยมมาก!"; // จะ return ค่านี้หากเปรียบเทียบแล้วถูกต้อง
  } else {
    print("Incorrect word: $recognizedText $correctWord");
    return "ไม่เป็นไร ลองดูใหม่อีกครั้ง!"; // จะ return ค่านี้หากเปรียบเทียบไม่ถูกต้อง
  }
}

// ฟังก์ชันการเปรียบเทียบ
bool custom_compare(String correctWord, String recognizedText) {
  return correctWord.trim().toLowerCase() ==
      recognizedText
          .trim()
          .toLowerCase(); // การเปรียบเทียบโดยไม่เปรียบตัวเล็กตัวใหญ่
}
