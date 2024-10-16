import 'package:flutter/material.dart';

import 'Dashboard.dart';

class UserLogin extends StatefulWidget {
  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/school 1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: [
          SizedBox(
            height: 50,
          ),
          Image.asset(
            'assets/background 3.png',
            height: 200,
            width: 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: 110,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Student'),
                  )),
              Container(
                  width: 110,
                  child:
                      ElevatedButton(onPressed: () {}, child: Text('Parent'))),
              Container(
                  width: 110,
                  child:
                      ElevatedButton(onPressed: () {}, child: Text('Staff'))),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              textAlign: TextAlign.left,
              decoration: InputDecoration(hintText: 'Username(Mobile/Email)'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                hintText: 'Password/OTP',
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 40,
            width: 300,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashBoard()),
                );
              },
              child: Text(
                'SIGN IN',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 56, 1, 123),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'HOW TO LOGIN?',
            style: TextStyle(
                color: const Color.fromARGB(255, 93, 29, 243), fontSize: 13),
          ),
          SizedBox(
            height: 130,
          ),
          Text(
            'Powered by',
            style: TextStyle(color: Colors.grey[800], fontSize: 14),
          ),
          Text(
            'DreamsGuider.com',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
          ),
          Text(
            'softwear | education | Advertising',
            style: TextStyle(color: Colors.grey[800], fontSize: 13),
          ),
        ]),
      ),
    ));
  }
}
