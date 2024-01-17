import 'package:flutter/services.dart';

class PhoneTextInputFormetter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String newText = newValue.text;

    late List<String> oldPhoneList;

    if (newText.length == 1)
      oldPhoneList = newText.split('');
    else
      oldPhoneList = newText.replaceAll(RegExp(r'\D'), '').split('').sublist(1);

    if (_isOldValueEqualsNewValue(
      oldValue.text,
      newText,
      oldPhoneList.length,
    )) {
      oldPhoneList.removeAt(oldPhoneList.length - 1);
    }

    if (oldPhoneList.length == 11)
      return TextEditingValue(
          text: oldValue.text,
          selection: TextSelection.collapsed(offset: newText.length - 1));

    List<String> newPhoneList = [];

    int j = 0;
    for (var i = 0; i < 18; i++) {
      switch (i) {
        case 0:
          newPhoneList.add('+');
          continue;
        case 1:
          newPhoneList.add('7');
          continue;
        case 2:
        case 8:
          newPhoneList.add(' ');
          continue;
        case 3:
          newPhoneList.add('(');
          continue;
        case 4:
        case 5:
        case 6:
        case 9:
        case 10:
        case 11:
        case 13:
        case 14:
        case 16:
        case 17:
          (newPhoneList, j) =
              _tryPutNumToNewPhoneList(oldPhoneList, j, newPhoneList);
          continue;
        case 7:
          newPhoneList.add(')');
          continue;
        case 12:
        case 15:
          newPhoneList.add('-');
          continue;
      }
    }

    int selection =
        !newPhoneList.contains('*') ? 18 : newPhoneList.indexOf('*');

    String newPhoneString = newPhoneList.join('');

    return TextEditingValue(
        text: newPhoneString,
        selection: TextSelection.collapsed(offset: selection));
  }

  bool _isOldValueEqualsNewValue(
    String oldValueText,
    String newValueText,
    oldPhoneListLength,
  ) =>
      oldValueText.replaceAll(RegExp(r'\D'), '').length ==
          newValueText.replaceAll(RegExp(r'\D'), '').length &&
      oldPhoneListLength > 1;

  (List<String>, int) _tryPutNumToNewPhoneList(
    List<String> oldPhoneList,
    int j,
    List<String> newPhoneList,
  ) {
    try {
      newPhoneList.add(oldPhoneList[j]);
      j++;
    } catch (e) {
      newPhoneList.add('*');
    }

    return (newPhoneList, j);
  }
}
