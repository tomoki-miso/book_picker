import 'package:book_picker/styles/colors.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:flutter/material.dart';

class PrimaryDialog extends StatelessWidget {
  const PrimaryDialog({
    required this.title,
    required this.contentWidget,
    this.onTap,
    this.buttonText,
    super.key,
  });

  final String title;
  final String? buttonText;
  final Widget contentWidget;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) => SimpleDialog(
        contentPadding: EdgeInsets.zero,
        titlePadding: EdgeInsets.zero,
        backgroundColor: ColorName.whiteBase.withOpacity(0.95),
        shadowColor: ColorName.blackBase,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: ColorName.greyBase,
                width: 0.8,
              ),
            ),
          ),
          child: Text(
            title,
            style: Styles.bookAuthorStyle,
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: contentWidget,
          ),
          InkWell(
            onTap: () => onTap ?? Navigator.pop(context),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.04,
              width: double.infinity,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: ColorName.greyBase),
                ),
              ),
              child: Center(
                child: Text(
                  buttonText ?? '閉じる',
                  style: TextStyle(color: Colors.blue[600]),
                ),
              ),
            ),
          ),
        ],
      );
}
