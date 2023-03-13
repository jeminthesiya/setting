import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setting/swech_provider.dart';

class ISetting extends StatefulWidget {
  const ISetting({Key? key}) : super(key: key);

  @override
  State<ISetting> createState() => _ISettingState();
}

class _ISettingState extends State<ISetting> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          backgroundColor: CupertinoColors.destructiveRed,
          middle: Text(
            "Settings UI",
            style: TextStyle(
              color: CupertinoColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 45,
                width: double.infinity,
                color: Colors.black12,
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Common",
                    style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              CupertinoListTile(
                trailing: Row(
                  children: [
                    Text(
                      "English",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                    ),
                    Icon(
                      CupertinoIcons.forward,
                      color: Colors.black54,
                      size: 15,
                    ),
                  ],
                ),
                leading: Icon(
                  CupertinoIcons.globe,
                  color: Colors.black54,
                ),
                title: Text(
                  "Language",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                  ),
                ),
              ),
              CupertinoListTile(
                trailing: Row(
                  children: [
                    Text(
                      "Production",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                    ),
                    Icon(
                      CupertinoIcons.forward,
                      color: Colors.black54,
                      size: 15,
                    ),
                  ],
                ),
                leading: Icon(
                  CupertinoIcons.cloud,
                  color: Colors.black54,
                ),
                title: Text(
                  "Environment",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                height: 45,
                width: double.infinity,
                color: Colors.black12,
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Account",
                    style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              CupertinoListTile(
                trailing: Icon(
                  CupertinoIcons.forward,
                  color: Colors.black54,
                  size: 15,
                ),
                leading: Icon(
                  CupertinoIcons.phone_fill,
                  color: Colors.black54,
                ),
                title: Text(
                  "Phone number",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                  ),
                ),
              ),
              CupertinoListTile(
                trailing: Icon(
                  CupertinoIcons.forward,
                  color: Colors.black54,
                  size: 15,
                ),
                leading: Icon(
                  CupertinoIcons.mail_solid,
                  color: Colors.black54,
                ),
                title: Text(
                  "Email",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                  ),
                ),
              ),
              CupertinoListTile(
                trailing: Icon(
                  CupertinoIcons.forward,
                  color: Colors.black54,
                  size: 15,
                ),
                leading: Icon(
                  CupertinoIcons.square_arrow_right,
                  color: Colors.black54,
                ),
                title: Text(
                  "Sign out",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                height: 45,
                width: double.infinity,
                color: Colors.black12,
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Security",
                    style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              CupertinoListTile(
                leading: Icon(
                  CupertinoIcons.lock_rotation,
                  color: Colors.black54,
                ),
                title: Text(
                  "Lock app in background",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                  ),
                ),
                trailing: CupertinoSwitch(
                  activeColor: Colors.red,
                  onChanged: (bool value) {
                    Provider.of<swich>(context, listen: true)
                        .onoff(light: !value);
                  },
                  value: Provider.of<swich>(context, listen: false).light,
                  thumbColor: CupertinoColors.destructiveRed,
                ),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: CupertinoColors.black,
              ),
              CupertinoListTile(
                trailing: CupertinoSwitch(
                    activeColor: CupertinoColors.destructiveRed,
                    onChanged: (bool value) {
                      Provider.of<swich>(context, listen: true)
                          .onoff(light: !value);
                    },
                    value: Provider.of<swich>(context, listen: false).light,
                    thumbColor: CupertinoColors.destructiveRed),
                leading: Icon(
                  CupertinoIcons.alt,
                  color: Colors.black54,
                ),
                title: Text(
                  "Use fingerprint",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                  ),
                ),
              ),
              CupertinoListTile(
                trailing: CupertinoSwitch(
                    activeColor: Colors.red,
                    onChanged: (bool value) {
                      Provider.of<swich>(context, listen: true)
                          .onoff(light: !value);
                    },
                    value: Provider.of<swich>(context, listen: false).light,
                    thumbColor: Colors.red),
                leading: Icon(
                  CupertinoIcons.lock,
                  size: 25,
                  color: Colors.black54,
                ),
                title: Text(
                  "Change password",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                height: 45,
                width: double.infinity,
                color: Colors.black12,
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Misc",
                    style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              CupertinoListTile(
                trailing: Icon(
                  CupertinoIcons.forward,
                  color: Colors.black54,
                  size: 15,
                ),
                leading: Icon(
                  CupertinoIcons.doc_text_fill,
                  color: Colors.black54,
                ),
                title: Text(
                  "Terms of Service",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                  ),
                ),
              ),
              CupertinoListTile(
                leading: Icon(
                  CupertinoIcons.plus_square_fill_on_square_fill,
                  color: Colors.black54,
                ),
                title: Text(
                  "Open source licenses",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                  ),
                ),
                trailing: Icon(
                  CupertinoIcons.forward,
                  color: Colors.black54,
                  size: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
