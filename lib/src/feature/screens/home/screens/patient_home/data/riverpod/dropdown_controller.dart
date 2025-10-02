import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final items = [
  const DropdownMenuItem(
    value: "NYK",
    child: Text("📍 New York"),
  ),
  const DropdownMenuItem(
    value: "LN",
    child: Text("📍 London"),
  ),
  const DropdownMenuItem(
    value: "TK",
    child: Text("📍 Tokyo"),
  ),
  const DropdownMenuItem(
    value: "BD",
    child: Text("📍 Bangladesh"),
  ),
];

final years = [
  const DropdownMenuItem(
    value: "1",
    child: Text("2025"),
  ),
  const DropdownMenuItem(
    value: "2",
    child: Text("2026"),
  ),
  const DropdownMenuItem(
    value: "3",
    child: Text("2027"),
  ),
];

final dropDownState = StateProvider<String?>((ref)=>"BD");

final dropDownState2 = StateProvider<String?>((ref)=>"1");