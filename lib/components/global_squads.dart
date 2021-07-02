import 'package:flutter/material.dart';
// ignore: invalid_language_version_override
// @dart=2.9
// ignore: import_of_legacy_library_into_null_safe
import 'package:charts_flutter/flutter.dart' as charts;

class GlobalSquads extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Text('Tannage Lifited'),
            Row(
              children: [
                Icon(Icons.access_alarm),
                Text('2,224Kg teste'),
              ],
            )
          ],
        )
      ],
    );
  }
}
