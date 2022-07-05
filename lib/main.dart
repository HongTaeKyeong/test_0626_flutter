// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//여기까지 기본 세팅

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar( leading : Icon(Icons.directions_car_filled),
          title: Text('MDL 어플개발'),
        ),

        body: Center(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width : 200, height: 180,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)
                        ),
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          '현재속도',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '추천 속도',
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),
              Text('속도 상태'),

              Container( width: 50, height: 50, color: Colors.green)

            ],
          ),

        ),
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: 50,
            child : Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Icon(Icons.phone),
                Icon(Icons.message),
            ],
           )
          )
        ),

      ),
    );
  }
}

