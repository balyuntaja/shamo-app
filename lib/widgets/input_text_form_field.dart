import 'package:flutter/material.dart';

class EmailInput extends StatelessWidget {
  final String label;
  final String hintText;
  final TextStyle labelStyle;
  final TextStyle inputTextStyle;
  final TextStyle hintStyle;
  final Color backgroundColor;
  final double borderRadius;
  final EdgeInsets padding;

  const EmailInput({
    super.key,
    this.label = 'Email Address',
    this.hintText = 'Your Email Address',
    required this.labelStyle,
    required this.inputTextStyle,
    required this.hintStyle,
    required this.backgroundColor,
    this.borderRadius = 12.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: labelStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            height: 50,
            width: double.infinity,
            padding: padding,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon/ic_email.png',
                    width: 18,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      style: inputTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: hintText,
                        hintStyle: hintStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
