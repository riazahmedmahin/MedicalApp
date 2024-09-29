import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        //backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 130,width: 130,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 206, 216, 244),
                shape: BoxShape.circle,
                
              ),
              child: Icon(Icons.lock_outline_rounded, size: 50, color: Colors.blue)),
            SizedBox(height: 30),
            Text(
              "Please Enter Your Email to Receive a Verification Code",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email/Phone',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
           
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement sending functionality
              },
              child: Text('Send'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 155, vertical: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}