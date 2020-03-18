// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(new MaterialApp(
    home: new OdysseeApp(),
  ));
}

class OdysseeApp extends StatefulWidget {
  @override
  _OdysseeAppState createState() => new _OdysseeAppState();
}

class _OdysseeAppState extends State<OdysseeApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 7,
        navigateAfterSeconds: new StartMenu(),
        title: new Text('Welcome to Odyssee!',
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0
          ),),
//        image: new Image.network('https://i.imgur.com/TyCSG9A.png'),
        backgroundColor: Color(0xFF194000),
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        loaderColor: Color(0xFFE86935)
    );
  }
}

class Splash extends StatelessWidget{
  @override
  Widget build (BuildContext context) {
    return new SplashScreen(
        seconds: 8,
        navigateAfterSeconds: new StartMenu(),
        title: new Text('Starting your Odyssee...',
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Color(0xFFE86935)
          ),
        ),
        image: new Image.asset('assets/icons/icon_odyssee.png'),
        backgroundColor: Color(0xFF194000),
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        loaderColor: Color(0xFFE86935)
    );
  }
}

class StartMenu extends StatelessWidget {                     //modified
  @override                                                        //new
  Widget build (BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/main_background.jpg"), fit: BoxFit.fitHeight)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: new AppBar(
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () { Scaffold.of(context).openDrawer(); },
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            iconTheme: IconThemeData(
              color: Color(0xFFE86935),
            ),
          ),
          drawer: Drawer(
            elevation: 15.0,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text("Placeholder name",
                    style: TextStyle(
                      color: Color(0xFFE5D9A5),
                      fontSize: 25,
                    ),
                  ),
                  accountEmail: Text("Placeholder email.com"),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/drawer_background.jpg"), fit: BoxFit.cover)
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Color(0xFFE5D9A5),
//                    child: Text(
//                      'Account Placeholder',
//                      style: TextStyle(
//                        color: Color(0xFFE5D9A5),
//                        fontSize: 30,
//                      ),
//                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.account_circle,
                      size: 35,
                      color: Color(0xFFE86935)
                    ),
                    title: Text('Account',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFE86935)
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Account()),
                      );
                    },
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                        Icons.group,
                        size: 35,
                        color: Color(0xFFE86935)
                    ),
                    title: Text('Social',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFE86935)
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Social()),
                      );
                    },
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                        Icons.settings,
                        size: 35,
                        color: Color(0xFFE86935)
                    ),
                    title: Text('Settings',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFE86935)
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Settings()),
                      );
                    },
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                        Icons.arrow_back,
                        size: 35,
                        color: Color(0xFFE86935)
                    ),
                    title: Text('Back to Main Menu',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFE86935)
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StartMenu()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          body: Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                       image: AssetImage("assets/icons/icon_odyssee_orange.png"),
                      ),
                    ),
                  ),
                  MaterialButton(
                    height: 75,
                    minWidth: 300,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Map()),
                      );
                    },
                    color: Color(0xEF194000),
                    textColor: Color(0xFFE5D9A5),
                    child: Text('PLAY!'),
                  ),
                  MaterialButton(
                    height: 50,
                    minWidth: 250,
                    onPressed: () {},
                    color: Color(0xEF615F5F),
                    textColor: Color(0xFFE5D9A5),
                    child: Text('How to Play'),
                  ),
                  MaterialButton(
                    height: 50,
                    minWidth: 250,
                    onPressed: () {},
                    color: Color(0xEF615F5F),
                    textColor: Color(0xFFE5D9A5),
                    child: Text('News and Updates'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  GoogleMapController mapController;
  final LatLng _center = const LatLng(37.8662, -119.5422);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: new AppBar(
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () { Scaffold.of(context).openDrawer(); },
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            iconTheme: IconThemeData(
              color: Color(0xFFE86935),
            ),
          ),
          drawer: Drawer(
            elevation: 15.0,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text("Placeholder name",
                    style: TextStyle(
                      color: Color(0xFFE5D9A5),
                      fontSize: 25,
                    ),
                  ),
                  accountEmail: Text("Placeholder email.com"),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/drawer_background.jpg"), fit: BoxFit.cover)
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Color(0xFFE5D9A5),
//                    child: Text(
//                      'Account Placeholder',
//                      style: TextStyle(
//                        color: Color(0xFFE5D9A5),
//                        fontSize: 30,
//                      ),
//                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                        Icons.account_circle,
                        size: 35,
                        color: Color(0xFFE86935)
                    ),
                    title: Text('Account',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFE86935)
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Account()),
                      );
                    },
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                        Icons.group,
                        size: 35,
                        color: Color(0xFFE86935)
                    ),
                    title: Text('Social',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFE86935)
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Social()),
                      );
                    },
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                        Icons.settings,
                        size: 35,
                        color: Color(0xFFE86935)
                    ),
                    title: Text('Settings',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFE86935)
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Settings()),
                      );
                    },
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(
                        Icons.arrow_back,
                        size: 35,
                        color: Color(0xFFE86935)
                    ),
                    title: Text('Back to Main Menu',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFE86935)
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StartMenu()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          body: new GoogleMap(
            myLocationEnabled: true,
            mapType: MapType.hybrid,
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 10.0,
            ),
//            minMaxZoomPreference: new MinMaxZoomPreference(1, 11),
            cameraTargetBounds: new CameraTargetBounds(new LatLngBounds(
              northeast: LatLng(38.187466, -119.201724),
              southwest: LatLng(37.495563, -119.885509)
            ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton(
            elevation: 5.0,
            foregroundColor: Color(0xFFE5D9A5),
            backgroundColor: Color(0xEF59B547),
            child: new Icon(Icons.camera_alt, size: 50.0,),
            onPressed: getImage,
          ),
        ),
      ),
    );
  }
}

class Account extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Account"),
      ),
      body: new Text("Account Page"),
    );
  }
}

class Social extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Social"),
      ),
      body: new Text("Social Page"),
    );
  }
}

class Settings extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Settings"),
      ),
      body: new Text("Settings Page"),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
      ),
      body: new Text("Login Page"),
    );
  }
}

