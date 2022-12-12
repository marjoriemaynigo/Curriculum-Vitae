import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/fourth': (context) => const FourthRoute(),
      '/fifth': (context) => const FifthRoute(),
      '/sixth': (context) => const SixthRoute(),
      '/seventh': (context) => const SeventhRoute(),
    },
  )); //MaterialApp
}

class FourthRoute extends StatelessWidget {
  const FourthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/cv.png"), fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('images/avatar.png'),
                ),
                Text(
                  'Marjorie R. Maynigo',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 35.0,
                    color: Color.fromARGB(255, 72, 6, 110),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Text(
                  'About Myself',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    color: Color.fromARGB(255, 72, 6, 110),
                    fontSize: 17.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new FifthRoute()));
                  },
                  icon: Icon(
                    // <-- Icon
                    Icons.account_box,
                  ),
                  label: Text('PERSONAL INFORMATION'), // <-- Text
                  style: ElevatedButton.styleFrom(
                    onPrimary: Color.fromARGB(255, 72, 6, 110),
                    primary: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 8),
                  ),
                ), // ElevatedButton
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SixthRoute()));
                  },
                  icon: Icon(
                    // <-- Icon
                    Icons.school,
                  ),
                  label: Text('EDUCATIONAL BACKGROUND'), // <-- Text
                  style: ElevatedButton.styleFrom(
                    onPrimary: Color.fromARGB(255, 72, 6, 110),
                    primary: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                  ),
                ), // ElevatedButton
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SeventhRoute()));
                  },
                  icon: Icon(
                    // <-- Icon
                    Icons.laptop,
                  ),
                  label: Text('PERSONAL SKILLS & CERTIFICATES'), // <-- Text
                  style: ElevatedButton.styleFrom(
                    onPrimary: Color.fromARGB(255, 72, 6, 110),
                    primary: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                  ),
                ), // ElevatedButton
                Padding(padding: EdgeInsets.only(top: 40)),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  icon: Icon(
                    // <-- Icon
                    Icons.logout,
                  ),
                  label: Text('Logout'), // <-- Text
                  style: ElevatedButton.styleFrom(
                    onPrimary: Color.fromARGB(255, 72, 6, 110),
                    primary: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 21, vertical: 5),
                  ),
                ), // ElevatedButton
              ],
            ),
          ),
        ),
      ),
    ); // Scaffold
  }
}

class FifthRoute extends StatelessWidget {
  const FifthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Background"),
        backgroundColor: Colors.purple,
      ), // AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.purple,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.account_box,
                  color: Colors.purple,
                ),
                title: Text(
                  'Name: Marjorie Rosario Maynigo',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Times New Roman',
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.location_city,
                  color: Colors.purple,
                ),
                title: Text(
                  'Address: #747 Songkoy Calasiao, Pangasinan',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Times New Roman',
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.purple,
                ),
                title: Text(
                  '\nPhone Number: +639275272373',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Times New Roman',
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.purple,
                ),
                title: Text(
                  '\nEmail: mmaynigo2@gmail.com',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Times New Roman',
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.cake,
                  color: Colors.purple,
                ),
                title: Text(
                  '\nBirthday: June 14, 2001' ,
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Times New Roman',
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.nat,
                  color: Colors.purple,
                ),
                title: Text(
                  '\nNationality: Filipino',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Times New Roman',
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ), // Center
    ); // Scaffold
  }
}

class SixthRoute extends StatelessWidget {
  const SixthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Education"),
        backgroundColor: Colors.purple,
      ), // AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.purple,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.purple,
                ),
                title: Text(
                  'Tertiary Education ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('Philippine College of Science and Technology'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Philippine College of Science and Technology',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text(
                    'Bachelor of Science in Information Technology 2019-2023'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.purple,
                ),
                title: Text(
                  'Secondary Education',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Times New Roman'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Philippine College of Science and Technology',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('Senior High School 2017-2019'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Buenlag National High School',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('Junior High School 2012-2017'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.purple,
                ),
                title: Text(
                  'Primary Education',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Times New Roman'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Songkoy Elementary School',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('2007-2012'),
              ),
            ),
          ],
        ),
      ), // Center
    ); // Scaffold
  }
}

class SeventhRoute extends StatelessWidget {
  const SeventhRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Skills & Certificates"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.purple,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                child: ListTile(
                  leading: Icon(
                    Icons.laptop ,
                    color: Colors.purple,
                  ),
                  title: Text(
                    'Personal Skills',
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: 'Times New Roman',
                      fontSize: 20.0,
                    ),
                  ),
                )),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              child: ListTile(

                title: Text(
                  '~ Good communication skills both oral and written',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black87,
                      fontFamily: 'Times New Roman'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              child: ListTile(

                title: Text(
                  '~ Good leadership skills',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black87,
                      fontFamily: 'Times New Roman'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              child: ListTile(

                title: Text(
                  '~ Creative and has critical thinking skills',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black87,
                      fontFamily: 'Times New Roman'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              child: ListTile(

                title: Text(
                  '~ Independent and can do multi-tasking',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black87,
                      fontFamily: 'Times New Roman'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              child: ListTile(

                title: Text(
                  '~ Can work under pressure',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black87,
                      fontFamily: 'Times New Roman'),
                ),
              ),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                child: ListTile(
                  leading: Icon(
                    Icons.school,
                    color: Colors.purple,
                  ),
                  title: Text(
                    'Certificates:',
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: 'Times New Roman',
                      fontSize: 20.0,
                    ),
                  ),
                )),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              child: ListTile(

                title: Text(
                  '~ NCII Computer System Servicing',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black87,
                      fontFamily: 'Times New Roman'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              child: ListTile(

                title: Text(
                  '~ Game Developer',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black87,
                      fontFamily: 'Times New Roman'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              child: ListTile(

                title: Text(
                  '~ Road to Success',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black87,
                      fontFamily: 'Times New Roman'),
                ),
              ),
            ),
          ],
      ),

       ), /// AppBar
    ); // Scaffold
  }
}
