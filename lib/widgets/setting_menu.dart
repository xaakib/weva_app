import 'package:flutter/material.dart ';

class SettingsMenu extends StatelessWidget {
  final String text;
  final Function onpress;
  final Icon icon;

  const SettingsMenu({Key key, this.text, this.onpress, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: icon,
        title: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_right,
            size: 30,
            color: Colors.red,
          ),
        ));
  }
}
