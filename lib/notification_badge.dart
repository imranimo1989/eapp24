import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationBadge extends StatelessWidget {
  const NotificationBadge({super.key, required this.totalNotification});

  final int totalNotification;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: const BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,

      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('$totalNotification',style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
        ),
      ),
    );
  }
}
