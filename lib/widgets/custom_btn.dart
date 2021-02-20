import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final String text;
  final Function onPressed;

  final bool outlineBtn;
  final bool isLoading;

  CustomBtn({
    this.text,
    this.onPressed,
    this.outlineBtn,
    this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    bool _outlineBtn = outlineBtn ?? false;
    bool _isLoading = isLoading ?? false;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 55.0,
        decoration: BoxDecoration(
          color: _outlineBtn ? Colors.transparent : Colors.red,
          border: Border.all(
            color: Colors.red,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(
            12.0,
          ),
        ),
        margin: EdgeInsets.symmetric(
          horizontal: 40.0,
          vertical: 8.0,
        ),
        child: Stack(
          children: [
            Visibility(
              visible: _isLoading ? false : true,
              child: Center(
                child: Text(
                  text ?? "text",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: _outlineBtn ? Colors.red : Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Visibility(
              visible: _isLoading,
              child: Center(
                child: SizedBox(
                  height: 30.0,
                  width: 30.0,
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
