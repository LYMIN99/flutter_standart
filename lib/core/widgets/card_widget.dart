import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final String description;
  final Widget? image;
  final VoidCallback onTap;

  const CardWidget({
    Key? key,
    required this.title,
    required this.description,
    this.image,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (image != null) image!,
              SizedBox(height: 8),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: 4),
              Text(description),
            ],
          ),
        ),
      ),
    );
  }
}

// CardWidget(
//   title: 'Card Title',
//   description: 'This is a description of the card.',
//   onTap: () {
//     print('Card tapped');
//   },
//   image: Image.asset('assets/image.jpg'),
// )
