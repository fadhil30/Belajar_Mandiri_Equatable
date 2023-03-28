// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:latihan_bloc/main.dart';

void main() {
  Orang orang1 = Orang('Joni', 26);
  Orang orang2 = Orang('Joni', 26);

  print(orang1 == orang2);
}

// Menggunakan Equatable 
class Orang extends Equatable {
  String nama;
  int umur;

  Orang(this.nama, this.umur);

  @override
  List<Object?> get props => [nama, umur];

  // Tidak menggunakan Equatable
  // @override
  // bool operator ==(Object other) {
  //   return identical(this, other) ||
  //       other is Orang && this.nama == other.nama && this.umur == other.umur;
  // }

  // @override
  // int get hashCode => nama.hashCode;
}
