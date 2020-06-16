import 'package:flutter/material.dart';
import '../start/start.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  _nextScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Start(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 400),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 20,
                        bottom: 10,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(labelText: 'Usuário'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(labelText: 'Senha'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 10,
                        bottom: 20,
                      ),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        color: Colors.green,
                        child: Text(
                          'ENTRAR',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 3,
                        onPressed: () {
                          _nextScreen();
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
