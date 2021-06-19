/// Flutter code sample for Table

// This sample shows a `Table` with borders, multiple types of column widths and different vertical cell alignments.

import 'package:flutter/material.dart';



/// This is the main application widget.
class Test extends StatelessWidget {


  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body:  MyStatelessWidget(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
     
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
        TableRow(
          children: <Widget>[
            Container(
                height: 32,
                width: 60,
            child: Text("hhhaha" ,textAlign: TextAlign.center,),

            ),
           
             Container(
                height: 32,
                width: 60,
            child: Text("hhhaha" ,textAlign: TextAlign.center,),

            ),
          ],
        ),
        TableRow(
         
          children: <Widget>[
            Container(
                height: 32,
                width: 60,
            child: Text("hhhaha" ,textAlign: TextAlign.center,),

            ),
           Container(
                height: 32,
                width: 60,
            child: Text("hhhaha" ,textAlign: TextAlign.center,),

            ),
          ],
        ),
      ],
    );
  }
}
