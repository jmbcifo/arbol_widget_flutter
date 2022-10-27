import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String? texto;
  final Color? textColor;
  final Color? colorBackGround;
  final Color? colorBorder;
  final void Function()? onPressed;
  const ButtonWidget({
    Key? key,
    required this.texto,
    required this.textColor,
    required this.colorBackGround,
    required this.colorBorder,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        child: Center(
          child: Text(
            texto!,
            style:
                Theme.of(context).textTheme.button!.copyWith(color: textColor),
          ),
        ),
        height: 50,
        decoration: BoxDecoration(
          color: colorBackGround,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(width: 2, color: colorBorder!),
        ),
      ),
    );
  }
}
