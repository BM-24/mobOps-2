import 'package:flutter/material.dart';

class RowItem extends StatelessWidget {
  const RowItem({Key? key, required this.imageUrl, required this.text})
      : super(key: key);

  final String imageUrl;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      color: Colors.black12,
      child: Row(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: Image.network(imageUrl, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(text, style: const TextStyle(fontSize: 16),),
          ),
        ],
      ),
    );
  }
}
