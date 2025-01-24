import 'package:flutter/material.dart';

Widget customButton(){
  return TextButton(
      onPressed: (){
        print('Button clicked !');
      },
      child: const Center(
        child: Text('Click here'),
      )
  );
}