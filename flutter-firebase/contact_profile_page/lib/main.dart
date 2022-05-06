import 'package:flutter/material.dart';

enum APP_THEME { LIGHT, DARK }

class ContactProfilePage extends StatefulWidget {
  @override
  _ContactProfilePageState createState() => _ContactProfilePageState();
}

var currentTheme = APP_THEME.LIGHT;

class _ContactProfilePageState extends State<ContactProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: currentTheme == APP_THEME.LIGHT
            ? MyAppThemes.appThemeDark()
            : MyAppThemes.appThemeLight(),
        home: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.arrow_back),
            actions: <Widget>[
              IconButton(
                  onPressed: () {
                    print("Contact is starred");
                  },
                  icon: Icon(Icons.star))
            ],
          ),
          body: ListView(
            children: <Widget>[
              Column(children: <Widget>[
                Container(
                    height: 200,
                    width: double.infinity,
                    child: Image.network(
                        "https://avatars.githubusercontent.com/u/35345818?v=4",
                        fit: BoxFit.cover)),
                Container(
                    height: 50,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text("bdushimi",
                                  style: TextStyle(fontSize: 30)))
                        ])),
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),

                  // Define theme for this local child
                  child: Theme(
                    data:
                        ThemeData(iconTheme: IconThemeData(color: Colors.red)),
                    child: profileCallToActionItems(),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                mobilePhoneListTile(),
                otherPhoneListTile(),
                Divider(
                  color: Colors.grey,
                ),
                emailListTile(),
                Divider(
                  color: Colors.grey,
                ),
                addressListTile(),
              ])
            ],
          ),
          floatingActionButton: FloatingActionButton.extended(
            icon: Icon(Icons.threesixty),
            label: const Text(''),
            onPressed: () {
              setState(() {
                //NEW CODE: Currently selected theme toggles when FAB is pressed
                currentTheme == APP_THEME.DARK
                    ? currentTheme = APP_THEME.LIGHT
                    : currentTheme = APP_THEME.DARK;
              });
            },
          ),
        ));
  }
}

Widget buildCallButtom() {
  return Column(children: <Widget>[
    IconButton(
      icon: Icon(Icons.call),
      onPressed: () {
        print("Call button is pressed");
      },
    ),
    Text("Call"),
  ]);
}

Widget buildTextButton() {
  return Column(children: <Widget>[
    IconButton(
      icon: Icon(
        Icons.message,
      ),
      onPressed: () {
        print("Text button is pressed");
      },
    ),
    Text("Text")
  ]);
}

Widget buildVideoButton() {
  return Column(children: <Widget>[
    IconButton(
      icon: Icon(Icons.video_call),
      onPressed: () {
        print("Video button is pressed");
      },
    ),
    Text("Video")
  ]);
}

Widget profileCallToActionItems() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      buildCallButtom(),
      buildTextButton(),
      buildVideoButton(),
      buildEmailButton(),
      buildDirectionButton(),
      buildPaymentButton(),
    ],
  );
}

Widget buildEmailButton() {
  return Column(children: <Widget>[
    IconButton(
      icon: Icon(Icons.email),
      onPressed: () {
        print("Email button is pressed");
      },
    ),
    Text("Email")
  ]);
}

Widget buildDirectionButton() {
  return Column(children: <Widget>[
    IconButton(
      icon: Icon(Icons.directions),
      onPressed: () {
        print("Directions button is pressed");
      },
    ),
    Text("Directions")
  ]);
}

Widget buildPaymentButton() {
  return Column(children: <Widget>[
    IconButton(
      icon: Icon(Icons.attach_money),
      onPressed: () {
        print("Payment button is pressed");
      },
    ),
    Text("Payment")
  ]);
}

Widget mobilePhoneListTile() {
  return ListTile(
    leading: Icon(Icons.call),
    title: Text("+250-788-123-456"),
    subtitle: Text("Mobile"),
    trailing: IconButton(icon: Icon(Icons.message), onPressed: () {}),
  );
}

Widget otherPhoneListTile() {
  return ListTile(
    leading: Text(""),
    title: Text("+250-722-123-456"),
    subtitle: Text("Home"),
    trailing: IconButton(icon: Icon(Icons.message), onPressed: () {}),
  );
}

Widget emailListTile() {
  return ListTile(
    leading: Icon(Icons.email),
    title: Text("mathberd@gmail.com"),
    subtitle: Text("Personal"),
  );
}

Widget addressListTile() {
  return ListTile(
    leading: Icon(Icons.location_on),
    title: Text("Kigali, Rwanda"),
    subtitle: Text("Home"),
    trailing: IconButton(icon: Icon(Icons.directions), onPressed: () {}),
  );
}

class MyAppThemes {
  static ThemeData appThemeDark() {
    return ThemeData(
      // Define the default brightness and colors for the overall app.
      brightness: Brightness.dark,

      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.black, foregroundColor: Colors.white),

      // Define color for app's icon
      iconTheme: IconThemeData(color: Colors.orange),

      appBarTheme: AppBarTheme(
        color: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
    );
  }

  static ThemeData appThemeLight() {
    return ThemeData(
      // Defines the default brightness and colors for the overall app
      brightness: Brightness.light,

      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.white, foregroundColor: Colors.black),

      // Define theme for appBar
      appBarTheme: AppBarTheme(
        color: Colors.white,

        // Define theme for Icon at appBar level
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),

      // Define theme for Icon at app level
      iconTheme: IconThemeData(
        color: Colors.indigo.shade800,
      ),
    );
  }
}

void main() => runApp(ContactProfilePage());
