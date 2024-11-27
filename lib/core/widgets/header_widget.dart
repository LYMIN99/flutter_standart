import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  final Widget? trailing;
  
  const HeaderWidget({Key? key, required this.title, this.trailing}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: Theme.of(context).textTheme.headlineMedium),
          if (trailing != null) trailing!,
        ],
      ),
    );
  }
}

// HeaderWidget(
//   title: 'Dashboard',
//   trailing: Icon(Icons.notifications),
// )
