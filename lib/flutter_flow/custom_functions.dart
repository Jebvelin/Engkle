import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

int randomPageNumber(List<int> usedNumbers) {
  // สร้าง List 1-10 และลบค่าที่ใช้ไปแล้ว
  List<int> numbersList = List.generate(10, (index) => index + 1)
      .where((num) => !usedNumbers.contains(num)) // ✅ ลบค่าที่ใช้ไปแล้ว
      .toList();

  if (numbersList.isEmpty) {
    return -1; // ถ้าครบ 10 ครั้ง ส่งค่า -1 เพื่อแจ้งให้รีเซ็ต
  }

  numbersList.shuffle(); // สุ่มค่า
  return numbersList.removeLast(); // คืนค่าตัวเลขที่สุ่ม
}
