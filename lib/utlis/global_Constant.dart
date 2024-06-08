
import 'package:flutter/services.dart';

class GlobalConstant{
  GlobalConstant._();
  static final inputFormaterNameField = [FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]+|\s"))];
  static final inputFormaterPhoneField = [FilteringTextInputFormatter.allow(RegExp(r"[0-9]"))];
  static final inputFormaterEmailField = [FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]+|\s"))];
}