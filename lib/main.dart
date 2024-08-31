import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red, Colors.blue],
              begin: Alignment.topLeft
              ),
          ),
          child: const Center(
            child: Text("Hashib Raja",selectionColor: Colors.white,),
          ),
        ),
      ),
    ),
  );
}
