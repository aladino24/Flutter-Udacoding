import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(child: Text("Payment Card Demo")),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(15, 40, 10, 0),
          child: Column(children: <Widget>[
              TextFormField(
                textCapitalization: TextCapitalization.words,

                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  filled: true,
                  icon: Icon(
                    Icons.person,
                    size: 30,
                  ),
                  hintText: 'Enter your name card...',
                  labelText: 'Card Name',
                  labelStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: 24),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  filled: true,
                  icon: Image.asset(
                      "images/verve.png",
                      width: 30,
                      ),          
                  
                  hintText: 'Enter Your Number',
                  labelText: 'Number',
                   labelStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: 24),
            TextFormField(
               keyboardType: TextInputType.number,
                decoration: InputDecoration(
                border: UnderlineInputBorder(),
                filled : true,
                icon :Icon(
                  Icons.payment,
                  size: 30,
                ),
                hintText: 'Enter your cvv code...',
                labelText: 'CVV',
                labelStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                  ),
              ),
            ),
            SizedBox(height: 24),

            TextFormField(
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
              border : UnderlineInputBorder(),
              filled : true,
              icon : Icon(
                Icons.date_range,
                size: 30,
                 ),
                 hintText: 'Enter the date...',
                 labelText: 'Expiry Date',
                 labelStyle: TextStyle(
                   fontSize: 15,
                   color: Colors.blue,
                 ),
              ),
            ),


            SizedBox(height: 24),
            MaterialButton(
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            color: Colors.blue[700],
            child: Text("Pay",
            style: TextStyle(
              color: Colors.white,
            ),
             ),
            onPressed: () {},
            ),

          ],
          ),
        ),
      ),
    );
  }
}
