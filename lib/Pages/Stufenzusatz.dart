import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MaterialApp(home: Stufenzusatz()));

class Stufenzusatz extends StatelessWidget {
  final List<String> Zusatz = ['Intervallfasten', 'Sport', 'Meditieren'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            'Stufenzusätze',
            style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                decoration: TextDecoration.underline),
          )),
          backgroundColor: Color.fromRGBO(35, 112, 192, 1),
        ),
        body: Stack(
          children: <Widget>[
            Align(
                alignment: Alignment(0, -0.95),
                child: Text(
                  'Du willst zu deiner aktuellen Stufe eine Aufgabe hinzufügen?\n',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      fontSize: 22,
                      color: Color.fromRGBO(35, 112, 192, 1)),
                  textAlign: TextAlign.center,
                )),
            Align(
                alignment: Alignment(0, -0.75),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                      '1. Schau dir meine Vorschläge genauer an, indem du auf sie klickst.\n2. Oder du erstellst dir deinen eigenen Zusatz.',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(35, 112, 192, 1))),
                )),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Align(
                  alignment: Alignment(0, 0.7),
                  child: Container(
                    width: 500,
                    height: 350,
                    color: Colors.white,
                    child: ListView.separated(
                        separatorBuilder: (BuildContext context, int i) {
                          return SizedBox(height: 15);
                        },
                        itemCount: Zusatz.length,
                        itemBuilder: (BuildContext, i) {
                          return Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  width: 5,
                                  color: Color.fromRGBO(238, 105, 38, 1),
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            child: ListTile(
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 20),
                              leading: Icon(
                                Icons.add,
                                color: Colors.green,
                                size: 60,
                              ),
                              title: Text(
                                Zusatz[i],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Color.fromRGBO(35, 112, 192, 1)),
                              ),
                              trailing: Column(children: <Widget>[
                                if (Zusatz[i] == 'Intervallfasten')
                                  Expanded(
                                      child: Container(
                                    child: Image(
                                        image: NetworkImage(
                                            'https://images.pexels.com/photos/1198264/pexels-photo-1198264.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            right: BorderSide(
                                                width: 10,
                                                color: Colors.white))),
                                  ))
                                else if (Zusatz[i] == 'Sport')
                                  Expanded(
                                      child: Container(
                                          child: Image(
                                              image: NetworkImage(
                                                  'https://cdn.pixabay.com/photo/2017/05/25/15/08/jogging-2343558_960_720.jpg')),
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  right: BorderSide(
                                                      width: 10,
                                                      color: Colors.white)))))
                                else if (Zusatz[i] == 'Meditieren')
                                  Expanded(
                                      child: Container(
                                          child: Image(
                                              image: NetworkImage(
                                                  'https://cdn.pixabay.com/photo/2016/11/22/23/29/meditate-1851165_960_720.jpg')),
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  right: BorderSide(
                                                      width: 10,
                                                      color: Colors.white)))))
                              ]),
                              onTap: () {
                                Navigator.push<Widget>(
                                  context,
                                  MaterialPageRoute<Widget>(
                                      builder: (context) =>
                                          StufenzusatzInfo(Zusatz[i])),
                                );
                              },
                            ),
                          );
                        }),
                  ),
                ))
          ],
        ),
        backgroundColor: Colors.white);
  }
}

class StufenzusatzInfo extends StatefulWidget {
  final String title;

  const StufenzusatzInfo(this.title);
  @override
  _StufenzusatzInfoState createState() => _StufenzusatzInfoState();
}

class _StufenzusatzInfoState extends State<StufenzusatzInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
              color: Colors.white, decoration: TextDecoration.underline),
        ),
        backgroundColor: Color.fromRGBO(35, 112, 192, 1),
      ),
      body: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment(0, -0.98),
              child: Container(
                width: 300,
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('Was musst du machen?',
                        style: TextStyle(fontSize: 25)),
                    Icon(Icons.arrow_circle_down,
                        size: 100, color: Color.fromRGBO(238, 105, 38, 1)),
                    Text('Meditiere täglich', style: TextStyle(fontSize: 25))
                  ],
                ),
              )),
          Align(
              alignment: Alignment(0, 0.2),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        width: 5, color: Color.fromRGBO(238, 105, 38, 1))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      if (widget.title == 'Meditieren')
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Meditation hilft bei\nder Stressbewältigung\nund kann somit\nStresspicken entgegenwirken.',
                            style: TextStyle(fontSize: 17),
                            textAlign: TextAlign.center,
                          ),
                        )
                      else if(widget.title == 'Intervallfasten')
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Deutlich weniger\nInsulin wird ausgeschüttet!',
                            style: TextStyle(fontSize: 17),
                            textAlign: TextAlign.center,
                          ),
                        )
                      else if(widget.title == 'Sport')
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Sport hilft bei\nder Stressbewältigung\nund kann somit\nStresspicken entgegenwirken.',
                            style: TextStyle(fontSize: 17),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      if(widget.title == 'Meditieren')
                      Container(
                        child: Image(
                          image: NetworkImage(
                              'https://cdn.pixabay.com/photo/2016/11/22/23/29/meditate-1851165_960_720.jpg'),
                        ),
                        width: 120,
                        height: 120,
                      )
                      else if(widget.title == 'Intervallfasten')
                        Container(
                          child: Image(
                            image: NetworkImage(
                                'https://images.pexels.com/photos/1198264/pexels-photo-1198264.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                          ),
                          width: 120,
                          height: 120,
                        )
                      else if(widget.title == 'Sport')
                          Container(
                            child: Image(
                              image: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2017/05/25/15/08/jogging-2343558_960_720.jpg'),
                            ),
                            width: 120,
                            height: 120,
                          )
                    ]),
              )),
          Align(
            alignment: Alignment(0, 0.7),
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add, color: Colors.white),
              backgroundColor: Colors.green,
              splashColor: Colors.green,
              elevation: 20,
            ),
          )
        ],
      ),
    );
  }
}
