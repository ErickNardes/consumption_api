// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CardProductWidget extends StatefulWidget {
  final String price;
  final String description;
  final String title;
  final String image;
  const CardProductWidget({
    Key? key,
    required this.price,
    required this.description,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  State<CardProductWidget> createState() => _CardProductWidgetState();
}

class _CardProductWidgetState extends State<CardProductWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.3,
      width: 200,
      child: Card(
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                height: size.height * 0.2,
                child: Center(
                  child: Image.network(
                    widget.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'R\$${widget.price}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
