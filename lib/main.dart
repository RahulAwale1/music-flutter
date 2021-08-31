import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red.shade200,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.music_note,
                color: Colors.black,
              ),
              Text(
                'Music Shop',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: ('Pacifico'),
                ),
              ),
              Icon(
                Icons.music_note,
                color: Colors.black,
              ),
            ],
          ),
          backgroundColor: Colors.red.shade100,
        ),
        body: MusicPage(),
      ),
    ),
  );
}

class MusicPage extends StatefulWidget {
  @override
  _MusicPageState createState() => _MusicPageState();
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text('!!!'),
    content: Text('Thank You for Purchasing.'),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

void playMusic(String musicName) {
  final player = AudioCache();
  player.play('$musicName.mp3');
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 6,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                ),
                height: 200,
                width: 410,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'images/ariana.jpeg',
                          height: 180,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Singer: Ariana Grande',
                          style: TextStyle(
                            fontFamily: ('SourceSansPro'),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Song: Positions(34 + 35)',
                          style: TextStyle(
                            fontFamily: ('SourceSansPro'),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Director: Director X',
                          style: TextStyle(
                            fontFamily: ('SourceSansPro'),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Gender: Female',
                          style: TextStyle(
                            fontFamily: ('SourceSansPro'),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 35,
                          ),
                          child: Row(
                            children: [
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.green.shade400),
                                  elevation: MaterialStateProperty.all(6),
                                ),
                                onPressed: () {
                                  playMusic('positions');
                                },
                                child: Text(
                                  'Play',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: ('SourceSansPro'),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.green.shade400),
                                  elevation: MaterialStateProperty.all(6),
                                ),
                                onPressed: () {
                                  showAlertDialog(context);
                                },
                                child: Text(
                                  'BUY',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: ('SourceSansPro'),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 6,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                ),
                height: 200,
                width: 410,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'images/selena.jpeg',
                          height: 180,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Singer: Selena Gomez',
                          style: TextStyle(
                            fontFamily: ('SourceSansPro'),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Song: Slow Down',
                          style: TextStyle(
                            fontFamily: ('SourceSansPro'),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Director: Philip Andelman',
                          style: TextStyle(
                            fontFamily: ('SourceSansPro'),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Gender: Female',
                          style: TextStyle(
                            fontFamily: ('SourceSansPro'),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 35,
                          ),
                          child: Row(
                            children: [
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.green.shade400),
                                  elevation: MaterialStateProperty.all(6),
                                ),
                                onPressed: () {
                                  playMusic('slowdown');
                                },
                                child: Text(
                                  'Play',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: ('SourceSansPro'),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.green.shade400),
                                  elevation: MaterialStateProperty.all(6),
                                ),
                                onPressed: () {
                                  showAlertDialog(context);
                                },
                                child: Text(
                                  'BUY',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: ('SourceSansPro'),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(
                6,
                20,
                6,
                10,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                ),
                height: 200,
                width: 410,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'images/blindinglights.jpeg',
                          height: 180,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Singer: The Weeknd',
                          style: TextStyle(
                            fontFamily: ('SourceSansPro'),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Song: Blinding Lights',
                          style: TextStyle(
                            fontFamily: ('SourceSansPro'),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Director: Anton Tammi',
                          style: TextStyle(
                            fontFamily: ('SourceSansPro'),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Gender: Male',
                          style: TextStyle(
                            fontFamily: ('SourceSansPro'),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 35,
                          ),
                          child: Row(
                            children: [
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.green.shade400),
                                  elevation: MaterialStateProperty.all(6),
                                ),
                                onPressed: () {
                                  playMusic('blindinglights');
                                },
                                child: Text(
                                  'Play',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: ('SourceSansPro'),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.green.shade400),
                                  elevation: MaterialStateProperty.all(6),
                                ),
                                onPressed: () {
                                  showAlertDialog(context);
                                },
                                child: Text(
                                  'BUY',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: ('SourceSansPro'),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
