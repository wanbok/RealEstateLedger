import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class CurrencyInputFormatter extends TextInputFormatter {

  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final formatter = NumberFormat.simpleCurrency(locale: "ko_KR");
    String newText;
    if(newValue.selection.baseOffset == 0) {
      newText = formatter.format(0);
    } else {
      double value = double.parse(newValue.text);
      newText = formatter.format(value);
    }

    return newValue.copyWith(
      text: newText,
      selection: new TextSelection.collapsed(offset: newText.length));
  }
}