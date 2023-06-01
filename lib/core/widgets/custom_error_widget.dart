import 'package:flutter/cupertino.dart';

class CustomErrorWidget extends StatelessWidget {
  final String error;
  const CustomErrorWidget({
    Key? key,
    required this.error,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(error),
    );
  }
}
