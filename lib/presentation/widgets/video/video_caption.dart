import 'package:flutter/material.dart';

class VideoCaption extends StatelessWidget {
  final String caption;

  const VideoCaption({
    super.key,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final style = Theme.of(context).textTheme.titleLarge;

    return SizedBox(
        width: size.width * 0.6,
        child: Text(
          caption,
          maxLines: 2,
          style: style,
        ));
  }
}
