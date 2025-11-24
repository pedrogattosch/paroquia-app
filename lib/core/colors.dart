import 'package:flutter/material.dart';

// Define as cores principais do aplicativo
const Color kPrimaryColor = Color(0xFF1565C0);
const Color kSecondaryColor = Color(0xFF42A5F5);
const Color kBackgroundColor = Color(0xFFF5F5F5);
const Color kTextColor = Color(0xFF212121);
const Color kBorderColor = Color(0xFFBDBDBD);

const LinearGradient kAppBarGradient = LinearGradient(
  colors: [kPrimaryColor, kSecondaryColor],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);