import 'package:flutter/material.dart';
import 'package:weva_app/widgets/setting_menu.dart';

class FlightCategori extends StatelessWidget {
  final String text;
  final Icon icon;
  final Color color;

  const FlightCategori({Key key, this.text, this.icon, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          barrierDismissible: true,
          context: context,
          builder: (conetx) {
            return showAlert();
          },
        );
      },
      child: Container(
        width: 70,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(color: color, shape: BoxShape.circle),
                child: icon,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget showAlert() {
    return AlertDialog(
      content: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 500,
            width: 300,
            decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              color: const Color(0xFFFFFF),
              borderRadius: BorderRadius.all(Radius.circular(40.0)),
            ),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SettingsMenu(
                  icon: Icon(
                    Icons.portable_wifi_off_outlined,
                    color: Colors.green,
                    size: 35,
                  ),
                  text: "Profile",
                ),
                Divider(),
                SettingsMenu(
                  icon: Icon(
                    Icons.star,
                    color: Colors.pink,
                    size: 35,
                  ),
                  text: "Eva Points",
                ),
                Divider(),
                SettingsMenu(
                  icon: Icon(
                    Icons.restore_outlined,
                    color: Colors.purple,
                    size: 35,
                  ),
                  text: "My reservation",
                ),
                Divider(),
                SettingsMenu(
                  icon: Icon(
                    Icons.notification_important,
                    color: Colors.green,
                    size: 35,
                  ),
                  text: "Notification",
                ),
                Divider(),
                SettingsMenu(
                  icon: Icon(
                    Icons.verified_user,
                    color: Colors.red,
                    size: 35,
                  ),
                  text: "User directory",
                ),
                Divider(),
                SettingsMenu(
                  icon: Icon(
                    Icons.search,
                    color: Colors.blue,
                    size: 35,
                  ),
                  text: "About Us",
                ),
                Divider(),
                SettingsMenu(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.red,
                    size: 35,
                  ),
                  text: "Settings",
                ),
              ],
            ),
          ),
          Positioned(
              top: -90,
              child: Text(
                "Menu",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
