import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../vi.dart';
import 'audioUI.dart';

class MainUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('              _____Music is Medicine____'),
        backgroundColor: Colors.black54,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // crment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    width: 400,
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/bw6.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    margin: EdgeInsets.only(right: 40, left: 40),
                    color: Colors.white,
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    margin: const EdgeInsets.all(10.0),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      //  padding: const EdgeInsets.all(15.0),
                      textColor: Colors.white,
                      color: Colors.black,
                      child: Icon(
                        FontAwesomeIcons.music,
                        size: 40,
                      ),

                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Audioo()),
                        );
                      },
                    ),
                  ),
                  Container(
                    width: 125,
                    height: 50,
                    margin: const EdgeInsets.all(10.0),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      textColor: Colors.white,
                      color: Colors.white,
                      child: Icon(
                        FontAwesomeIcons.video,
                        size: 40,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Video1()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              width: double.infinity,
              height: 600,
              //margin: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('images/bw5.jpg'),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 10),
                    spreadRadius: 0,
                    blurRadius: 0,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
