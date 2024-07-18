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
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

bool isCorrect(String email) {
  // if the email ends with "@cmail.carleton.ca" return true if not return false
  return email.endsWith('@cmail.carleton.ca');
}

double ratiing(
  List<double> rates,
  int numberOfRates,
) {
  // rates / numberOfRate
  if (numberOfRates == 0) {
    return 0.0;
  }
  double sum = 0.0;
  for (double rate in rates) {
    sum += rate;
  }
  return sum / numberOfRates;
}

List<String> theNewList(
  List<String> oldList,
  int oldIndex,
  String? newIndex,
) {
  // reorder the list and make the item in the old index moves the newindex
  if (newIndex == null) {
    return oldList;
  }
  final int newIndexInt = int.parse(newIndex);
  final String item = oldList.removeAt(oldIndex);
  if (newIndexInt >= oldList.length) {
    oldList.add(item);
  } else {
    oldList.insert(newIndexInt, item);
  }
  return oldList;
}
