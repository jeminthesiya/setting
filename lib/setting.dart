import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setting/swech_provider.dart';

class setting extends StatefulWidget {
  const setting({Key? key}) : super(key: key);

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "Settings UI",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Common",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.language,
                  color: Colors.black54,
                ),
                subtitle: Text(
                  "English",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                  ),
                ),
                title: Text(
                  "Language",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.black12,
              ),
              ListTile(
                leading: Icon(
                  Icons.cloud_outlined,
                  color: Colors.black54,
                ),
                subtitle: Text(
                  "Production",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                  ),
                ),
                title: Text(
                  "Environment",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Account",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.call,
                  color: Colors.black54,
                ),
                title: Text(
                  "Phone number",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.black12,
              ),
              ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.black54,
                ),
                title: Text(
                  "Email",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.black12,
              ),
              ListTile(
                leading: Icon(
                  Icons.exit_to_app_outlined,
                  color: Colors.black54,
                ),
                title: Text(
                  "Sign out",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Security",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.phonelink_lock,
                  color: Colors.black54,
                ),
                title: Text(
                  "Lock app in background",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                ),
                trailing: Switch(
                    activeColor: Colors.red,
                    onChanged: (bool value) {
                      Provider.of<swich>(context, listen: true)
                          .onoff(light: !value);
                    },
                    value: Provider.of<swich>(context, listen: false).light,
                    focusColor: Colors.red),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.black12,
              ),
              ListTile(
                trailing: Switch(
                    activeColor: Colors.red,
                    onChanged: (bool value) {
                      Provider.of<swich>(context, listen: true)
                          .onoff(light: !value);
                    },
                    value: Provider.of<swich>(context, listen: false).light,
                    focusColor: Colors.red),
                leading: Icon(
                  Icons.fingerprint,
                  color: Colors.black54,
                ),
                title: Text(
                  "Use fingerprint",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.black12,
              ),
              ListTile(
                trailing: Switch(
                    activeColor: Colors.red,
                    onChanged: (bool value) {
                      Provider.of<swich>(context, listen: true)
                          .onoff(light: !value);
                    },
                    value: Provider.of<swich>(context, listen: false).light,
                    focusColor: Colors.red),
                leading: Icon(
                  Icons.lock,
                  color: Colors.black54,
                ),
                title: Text(
                  "Change password",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Account",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.black54,
                  size: 15,
                ),
                leading: Icon(
                  Icons.book,
                  color: Colors.black54,
                ),
                title: Text(
                  "Terms of Service",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.black12,
              ),
              ListTile(
                leading: Icon(
                  Icons.photo_album_rounded,
                  color: Colors.black54,
                ),
                title: Text(
                  "Open source licenses",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
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
