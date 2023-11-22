import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final VoidCallback onTap;

  const CardButton({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        tileColor: color.withOpacity(0.1),
        leading: Icon(icon, color: color),
        title: Text(text, style: TextStyle(color: color)),
        onTap: onTap,
      ),
    );
  }
}
