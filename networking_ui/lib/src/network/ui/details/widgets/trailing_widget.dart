import 'package:flutter/material.dart';

import '../../raw_data_viewer/screen/raw_data_viewer_screen.dart';

class TrailingWidget extends StatelessWidget {
  final String text;

  final Map<String, dynamic> data;
  final bool beautificationRequired;
  const TrailingWidget({super.key, required this.text, required this.data, this.beautificationRequired = false});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      // onPressed: () => mobileRoutes.rawData(
      //   context,
      //   data,
      //   beautificationRequired,
      // ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return RawDataViewerScreen(
                data: data,
                beautificationRequired: beautificationRequired,
              );
            },
          ),
        );
      },
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelSmall,
      ),
    );
  }
}
