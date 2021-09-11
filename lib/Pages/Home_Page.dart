import 'package:akne/Pages/Database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Database.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home: Startseite()));}

class Startseite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
              child: Text(
            'Startseite',
            style:
                TextStyle(decoration: TextDecoration.underline, fontSize: 30),
          )),
          backgroundColor: Color.fromRGBO(35, 112, 192, 1)),
      body: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment(0, -0.95),
              child: Text(
                  '1. Inspiziere alle Stufen.\n2. Überlege, welche Stufe du dir zutraust.\n3. Wähle eine Stufe aus.',
                  style: TextStyle(
                      color: Color.fromRGBO(35, 112, 192, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold))),
          Stack(
            children: <Widget>[
              Align(
                  alignment: Alignment(-0.7, -0.6),
                  child: Container(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push<Widget>(
                                context,
                                MaterialPageRoute<Widget>(
                                    builder: (BuildContext context) =>
                                        ToDo1()));
                          },
                          child: Text(
                            'Stufe 1',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(35, 112, 192, 1)),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              minimumSize: Size(125, 60),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)))),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color: Color.fromRGBO(238, 105, 38, 1)),
                          borderRadius: BorderRadius.circular(34),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: Offset(0, 7))
                          ]))),
              Align(
                  alignment: Alignment(-0.7, -0.2),
                  child: Container(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push<Widget>(
                                context,
                                MaterialPageRoute<Widget>(
                                    builder: (BuildContext context) =>
                                        ToDo3()));
                          },
                          child: Text(
                            'Stufe 3',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(35, 112, 192, 1)),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              minimumSize: Size(125, 60),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)))),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color: Color.fromRGBO(238, 105, 38, 1)),
                          borderRadius: BorderRadius.circular(34),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: Offset(0, 7))
                          ]))),
              Align(
                  alignment: Alignment(-0.7, 0.2),
                  child: Container(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push<Widget>(
                                context,
                                MaterialPageRoute<Widget>(
                                    builder: (BuildContext context) =>
                                        ToDo5()));
                          },
                          child: Text(
                            'Stufe 5',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(35, 112, 192, 1)),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              minimumSize: Size(125, 60),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)))),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color: Color.fromRGBO(238, 105, 38, 1)),
                          borderRadius: BorderRadius.circular(34),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: Offset(0, 7))
                          ]))),
            ],
          ),
          Stack(
            children: <Widget>[
              Align(
                  alignment: Alignment(0.7, -0.6),
                  child: Container(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push<Widget>(
                                context,
                                MaterialPageRoute<Widget>(
                                    builder: (BuildContext context) =>
                                        ToDo2()));
                          },
                          child: Text(
                            'Stufe 2',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(35, 112, 192, 1)),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              minimumSize: Size(125, 60),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)))),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color: Color.fromRGBO(238, 105, 38, 1)),
                          borderRadius: BorderRadius.circular(34),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: Offset(0, 7))
                          ]))),
              Align(
                  alignment: Alignment(0.7, -0.2),
                  child: Container(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push<Widget>(
                                context,
                                MaterialPageRoute<Widget>(
                                    builder: (BuildContext context) =>
                                        ToDo4()));
                          },
                          child: Text(
                            'Stufe 4',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(35, 112, 192, 1)),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              minimumSize: Size(125, 60),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)))),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color: Color.fromRGBO(238, 105, 38, 1)),
                          borderRadius: BorderRadius.circular(34),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: Offset(0, 7))
                          ]))),
              Align(
                  alignment: Alignment(0.7, 0.2),
                  child: Container(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push<Widget>(
                                context,
                                MaterialPageRoute<Widget>(
                                    builder: (BuildContext context) =>
                                        ToDo6()));
                          },
                          child: Text(
                            'Stufe 6',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(35, 112, 192, 1)),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              minimumSize: Size(125, 60),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)))),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color: Color.fromRGBO(238, 105, 38, 1)),
                          borderRadius: BorderRadius.circular(34),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: Offset(0, 7))
                          ]))),
            ],
          ),
          Align(
              alignment: Alignment(0, 0.6),
              child: Container(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push<Widget>(
                            context,
                            MaterialPageRoute<Widget>(
                                builder: (BuildContext context) =>
                                    ToDoS()));
                      },
                      child: Text(
                        'Selbstentworfene Stufe',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(35, 112, 192, 1)),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          minimumSize: Size(330, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 5, color: Color.fromRGBO(238, 105, 38, 1)),
                      borderRadius: BorderRadius.circular(34),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.8),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(0, 7))
                      ]))),
          Align(
              alignment: Alignment(0, 0.85),
              child: Text(
                'Was ist eine Stufe?',
                style: TextStyle(
                    fontSize: 30,
                    color: Color.fromRGBO(35, 112, 192, 1),
                    decoration: TextDecoration.underline),
              )),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}

class ToDo1 extends StatefulWidget {

  @override
  _ToDo1State createState() => _ToDo1State();
}

class _ToDo1State extends State<ToDo1> {

  User? user;
  late DatabaseService database;

  void toggleDone(String key, bool value) {
    database.setTodo(key, !value);
  }

  Future<void> connectToFirebase() async{
    final FirebaseAuth _auth = FirebaseAuth.instance;
    UserCredential result = await _auth.signInAnonymously();
    user = result.user;
    database = DatabaseService(user!.uid);

    if (!(await database.checkIfUserExists())) {
      database.setTodo('To-Do anlegen', false);
    }
  }

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    connectToFirebase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Stufe 1',
          style: TextStyle(
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline),
        )),
        backgroundColor: Color.fromRGBO(35, 112, 192, 1),
      ),
      body: Center(child: ElevatedButton(
        onPressed: () {print(DatabaseService(user!.uid));},
        child: Icon(Icons.question_answer_outlined)
      ))
    );
  }
}

class ToDo2 extends StatefulWidget {
  @override
  _ToDo2State createState() => _ToDo2State();
}

class _ToDo2State extends State<ToDo2> {

  Map<String, bool> products = {
    'Milchprodukte': false,
    'Süßigkeiten & süße Getränke': false
  };

  void toggleDone(String key) {
    setState(() {
      products.update(key, (bool done) => !done);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Stufe 2',
          style: TextStyle(
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline),
        )),
        backgroundColor: Color.fromRGBO(35, 112, 192, 1),
      ),
      body: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 10,
            );
          },
          padding: EdgeInsets.all(10),
          itemCount: products.length,
          itemBuilder: (BuildContext, i) {
            String key = products.keys.elementAt(i);
            return ToDoItem(
              key,
              products[key]!,
              () => toggleDone(key),
            );
          }),
    );
  }
}

class ToDo3 extends StatefulWidget {
  @override
  _ToDo3State createState() => _ToDo3State();
}

class _ToDo3State extends State<ToDo3> {
  Map<String, bool> products = {
    'Milchprodukte': false,
    'Süßigkeiten & süße Getränke': false,
    'glykämische Last': false
  };

  void toggleDone(String key) {
    setState(() {
      products.update(key, (bool done) => !done);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Stufe 3',
          style: TextStyle(
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline),
        )),
        backgroundColor: Color.fromRGBO(35, 112, 192, 1),
      ),
      body: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 10,
            );
          },
          padding: EdgeInsets.all(10),
          itemCount: products.length,
          itemBuilder: (BuildContext, i) {
            String key = products.keys.elementAt(i);
            return ToDoItem(
              key,
              products[key]!,
              () => toggleDone(key),
            );
          }),
    );
  }
}

class ToDo4 extends StatefulWidget {
  @override
  _ToDo4State createState() => _ToDo4State();
}

class _ToDo4State extends State<ToDo4> {
  Map<String, bool> products = {
    'Milchprodukte': false,
    'Süßigkeiten & Süße Getränke': false,
    'glykämische Last': false,
    'Fettsäureverhältnis': false
  };

  void toggleDone(String key) {
    setState(() {
      products.update(key, (bool done) => !done);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Stufe 3',
          style: TextStyle(
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline),
        )),
        backgroundColor: Color.fromRGBO(35, 112, 192, 1),
      ),
      body: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 10,
            );
          },
          padding: EdgeInsets.all(10),
          itemCount: products.length,
          itemBuilder: (BuildContext, i) {
            String key = products.keys.elementAt(i);
            return ToDoItem(
              key,
              products[key]!,
              () => toggleDone(key),
            );
          }),
    );
  }
}

class ToDo5 extends StatefulWidget {
  @override
  _ToDo5State createState() => _ToDo5State();
}

class _ToDo5State extends State<ToDo5> {
  Map<String, bool> products = {
    'Milchprodukte': false,
    'Süßigkeiten & süße Getränke': false,
    'glykämische Last': false,
    'Fettsäureverhältnis': false,
    'Nährstoffbedarf': false
  };

  void toggleDone(String key) {
    setState(() {
      products.update(key, (bool done) => !done);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Stufe 5',
          style: TextStyle(
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline),
        )),
        backgroundColor: Color.fromRGBO(35, 112, 192, 1),
      ),
      body: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 10,
            );
          },
          padding: EdgeInsets.all(10),
          itemCount: products.length,
          itemBuilder: (BuildContext, i) {
            String key = products.keys.elementAt(i);
            return ToDoItem(
              key,
              products[key]!,
              () => toggleDone(key),
            );
          }),
    );
  }
}

class ToDo6 extends StatefulWidget {
  @override
  _ToDo6State createState() => _ToDo6State();
}

class _ToDo6State extends State<ToDo6> {
  Map<String, bool> products = {
    'Milchprodukte': false,
    'Süßigkeiten & süße Getränke': false,
    'glykämische Last': false,
    'Fettsäureverhältnis': false,
    'Nährstoffbedarf': false,
    'Kohlenhydrate': false
  };

  void toggleDone(String key) {
    setState(() {
      products.update(key, (bool done) => !done);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Stufe 6',
          style: TextStyle(
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline),
        )),
        backgroundColor: Color.fromRGBO(35, 112, 192, 1),
      ),
      body: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 10,
            );
          },
          padding: EdgeInsets.all(10),
          itemCount: products.length,
          itemBuilder: (BuildContext, i) {
            String key = products.keys.elementAt(i);
            return ToDoItem(
              key,
              products[key]!,
              () => toggleDone(key),
            );
          }),
    );
  }
}

class ToDoS extends StatefulWidget {
  @override
  _ToDoSState createState() => _ToDoSState();
}

class _ToDoSState extends State<ToDoS> {
  Map<String, bool> products = {};



  void toggleDone(String key) {
    setState(() {
      products.update(key, (bool done) => !done);
    });
  }

  void addItem(key) {
    setState(() {
      products[key] = false;
    });
    Navigator.pop(context);
  }

  void newEntry() {
    showDialog<AlertDialog>(
        context: context,
        builder: (BuildContext context) {
          return addItemDialog(addItem);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Selbstentworfene Stufe',
          style: TextStyle(
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline),
        )),
        backgroundColor: Color.fromRGBO(35, 112, 192, 1),
      ),
      body: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 10,
            );
          },
          padding: EdgeInsets.all(10),
          itemCount: products.length,
          itemBuilder: (BuildContext, i) {
            String key = products.keys.elementAt(i);
            return ToDoItem(
              key,
              products[key]!,
              () => toggleDone(key),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: newEntry,
        backgroundColor: Color.fromRGBO(35, 112, 192, 1),
        child: Icon(Icons.add),
      ),
    );
  }
}

class ToDoItem extends StatelessWidget {
  final String title;
  final bool done;
  final Function toggleDone;

  const ToDoItem(this.title, this.done, this.toggleDone);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(
                width: 5,
                color: done ? Color.fromRGBO(238, 105, 38, 1) : Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 20),
          leading: Container(
            child: Image(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2019/06/06/00/30/acne-4254911_960_720.png')),
            decoration: BoxDecoration(
                border:
                    Border(left: BorderSide(width: 15, color: Colors.white))),
          ),
          title: Center(
              child: Text(
            title,
            style: TextStyle(
                color: done ? Color.fromRGBO(238, 105, 38, 1) : Colors.grey,
                fontWeight: FontWeight.bold),
          )),
          trailing: Checkbox(
            value: done,
            checkColor: Colors.white,
            activeColor: Color.fromRGBO(35, 112, 192, 1),
            onChanged: (bool? value) => toggleDone(),
          ),
          onTap: () {
            Navigator.push<Widget>(
              context,
              MaterialPageRoute<Widget>(
                  builder: (BuildContext context) => NextScreen(done, title)),
            );
          },
          tileColor: Colors.white,
        ));
  }
}

class addItemDialog extends StatefulWidget {
  final void Function(String text) addItem;

  const addItemDialog(this.addItem);

  @override
  _addItemDialogState createState() => _addItemDialogState();
}

class _addItemDialogState extends State<addItemDialog> {
  GlobalKey<FormState> _formKey = GlobalKey();
  late String item;

  void save() {
    if (_formKey.currentState!.validate()) {
      return widget.addItem(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: Form(
            key: _formKey,
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              TextFormField(
                onChanged: (String text) => item = text,
                onFieldSubmitted: (String text) => save,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Gib ein To-Do-Eintrag ein';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    hintText: 'Gib ein To-do ein',
                    border: OutlineInputBorder(),
                    icon: Icon(
                      Icons.add,
                    )),
              ),
              RaisedButton(
                  onPressed: save,
                  child: Text(
                    'Save',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Color.fromRGBO(35, 112, 192, 1)),
            ])));
  }
}

class NextScreen extends StatelessWidget {
  final bool? done;
  final String title;

  const NextScreen(this.done, this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: done! ? Colors.green : Colors.red,
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Stack(children: <Widget>[
              Align(
                  alignment: Alignment(0, -0.95),
                  child: Container(
                      child: Text(
                    'Was musst du machen?',
                    style: TextStyle(
                        color: done! ? Colors.white : Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ))),
              if (title == 'Milchprodukte')
                Align(
                    alignment: Alignment(0, -0.65),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                        child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 25,
                                    color: done! ? Colors.white : Colors.black),
                                children: [
                              TextSpan(
                                  text:
                                      'A. Milchprodukte komplet streichen, oder...\n'),
                              TextSpan(
                                  text: 'B. Konsum von 100% auf 10% senken'),
                            ])),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 5,
                                color: done! ? Colors.white : Colors.black),
                            color: done! ? Colors.green[400] : Colors.red[400]),
                      ),
                    ))
              else if (title == 'Süßigkeiten & süße Getränke')
                Align(
                    alignment: Alignment(0, -0.65),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                        child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 25,
                                    color: done! ? Colors.white : Colors.black),
                                children: [
                              TextSpan(
                                  text:
                                      'A. Zuckerkonsum komplet steichen, oder...\n'),
                              TextSpan(
                                  text: 'B. Konsum von 100% auf 10% senken'),
                            ])),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 5,
                                color: done! ? Colors.white : Colors.black),
                            color: done! ? Colors.green[400] : Colors.red[400]),
                      ),
                    ))
              else if (title == 'glykämische Last')
                Align(
                    alignment: Alignment(0, -0.65),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                        child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 25,
                                    color: done! ? Colors.white : Colors.black),
                                children: [
                              TextSpan(
                                  text:
                                      '1. eine hohe glykämische Last erhöhen die Talgproduktion\n'),
                              TextSpan(
                                  text:
                                      '2. eine hohe glykämische Last sorgen für eine erhöhte Zellteilung')
                            ])),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 5,
                                color: done! ? Colors.white : Colors.black),
                            color: done! ? Colors.green[400] : Colors.red[400]),
                      ),
                    ))
              else if (title == 'Fettsäureverhältnis')
                Align(
                    alignment: Alignment(0, -0.65),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                        child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 23,
                                    color: done! ? Colors.white : Colors.black),
                                children: [
                              TextSpan(
                                  text:
                                      '1. Das Fettsäureverhältnis beim Arzt bestimmen lassen\n'),
                              TextSpan(text: '(von Omega 3 zu Omega 6)\n'),
                              TextSpan(
                                  text:
                                      'Ergreife dann Maßnahmen, die dich zu einem Verhältnis von min 1:5')
                            ])),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 5,
                                color: done! ? Colors.white : Colors.black),
                            color: done! ? Colors.green[400] : Colors.red[400]),
                      ),
                    ))
              else if (title == 'Nährstoffbedarf')
                Align(
                    alignment: Alignment(0, -0.65),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                        child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 25,
                                    color: done! ? Colors.white : Colors.black),
                                children: [
                              TextSpan(
                                  text: '1. Mache beim Arzt ein Blutbild\n'),
                              TextSpan(
                                  text:
                                      '2. Ergeife Maßnahmen, die deine Mangel ausgleichen')
                            ])),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 5,
                                color: done! ? Colors.white : Colors.black),
                            color: done! ? Colors.green[400] : Colors.red[400]),
                      ),
                    ))
              else if (title == 'Kohlenhydrate')
                Align(
                    alignment: Alignment(0, -0.65),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                        child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 25,
                                    color: done! ? Colors.white : Colors.black),
                                children: [
                              TextSpan(
                                  text:
                                      '1. Reduziere die Menge an Kohlenhydraten, die du am Tag konsumierst\n'),
                              TextSpan(
                                  text:
                                      '2. Reduziere vor allem schnelle Kohlenhydrate, wie Zucker')
                            ])),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 5,
                                color: done! ? Colors.white : Colors.black),
                            color: done! ? Colors.green[400] : Colors.red[400]),
                      ),
                    ))
              else
                Align(
                    alignment: Alignment(0, -0.65),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 25),
                          child: Text(
                            'Du hast sicher deine Gründe, diese Aufgabe zu verfolgen!\n;)',
                            style: TextStyle(
                                fontSize: 30,
                                color: done! ? Colors.white : Colors.black),
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 5,
                                  color: done! ? Colors.white : Colors.black),
                              color:
                                  done! ? Colors.green[400] : Colors.red[400]),
                        ))),
              Align(
                  alignment: Alignment(0, 0.7),
                  child: Container(
                      child: TextButton(
                          onPressed: () => Navigator.push<Widget>(
                              context,
                              MaterialPageRoute<Widget>(
                                  builder: (BuildContext context) =>
                                      Screen2(title))),
                          child: Text(
                            'Wie kann dir diese To-Do helfen?',
                            style: TextStyle(
                                color: done! ? Colors.white : Colors.black,
                                fontSize: 18,
                                decoration: TextDecoration.underline),
                            textAlign: TextAlign.center,
                          )))),
              Align(
                  alignment: Alignment(0, 0.4),
                  child: Icon(
                    done! ? Icons.done : Icons.access_alarm,
                    color: done! ? Colors.white : Colors.black,
                    size: 100,),
                  ),
              Align(
                  alignment: Alignment(0, 0.1),
                  child: Text(
                    done!
                        ? 'Super! Du arbeitest daran, dein Hautbild zu verbessern!'
                        : 'Dieses To-Do musst du noch erledigen!',
                    style: TextStyle(
                        fontSize: 20,
                        color: done! ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )),
            ])));
  }
}

class Screen2 extends StatelessWidget {
  final String title;

  const Screen2(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(title),
            backgroundColor: Color.fromRGBO(35, 112, 192, 1)),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Stack(children: <Widget>[
              Align(
                  alignment: Alignment(0, -0.9),
                  child: Text('Wie hilft dir dieses To-Do?',
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromRGBO(35, 112, 192, 1),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline))),
              if (title == 'Milchprodukte')
                Align(
                    alignment: Alignment(0, -0.5),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                      child: RichText(
                          text: TextSpan(
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                              children: [
                            TextSpan(
                                text: '1.',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  backgroundColor: Colors.blue,
                                  color: Colors.white,
                                )),
                            TextSpan(
                                text:
                                    ' Milchprodukte erhöhen die Talgproduktion\n'),
                            TextSpan(
                                text: '2.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.blue,
                                    color: Colors.white)),
                            TextSpan(
                                text:
                                    ' Milchprodukte sorgen für eine erhöhte Zellteilung'),
                          ])),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color: Color.fromRGBO(238, 105, 38, 1)),
                          color: Colors.white),
                    ))
              else if (title == 'Süßigkeiten & süße Getränke')
                Align(
                    alignment: Alignment(0, -0.5),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                      child: RichText(
                          text: TextSpan(
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                              children: [
                            TextSpan(
                                text: '1.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.blue,
                                    color: Colors.white)),
                            TextSpan(
                                text: ' Zucker erhöhen die Talgproduktion\n'),
                            TextSpan(
                                text: '2.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.blue,
                                    color: Colors.white)),
                            TextSpan(
                                text:
                                    ' Zucker sorgen für eine erhöhte Zellteilung'),
                          ])),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color: Color.fromRGBO(238, 105, 38, 1)),
                          color: Colors.white),
                    ))
              else if (title == 'glykämische Last')
                Align(
                    alignment: Alignment(0, -0.5),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                      child: RichText(
                          text: TextSpan(
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                              children: [
                            TextSpan(
                                text: '1.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.blue,
                                    color: Colors.white)),
                            TextSpan(
                                text:
                                    ' eine hohe glykämische Last erhöhen die Talgproduktion\n'),
                            TextSpan(
                                text: '2.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.blue,
                                    color: Colors.white)),
                            TextSpan(
                                text:
                                    ' eine hohe glykämische Last sorgen für eine erhöhte Zellteilung')
                          ])),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color: Color.fromRGBO(238, 105, 38, 1)),
                          color: Colors.white),
                    ))
              else if (title == 'Fettsäureverhältnis')
                Align(
                    alignment: Alignment(0, -0.5),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                      child: RichText(
                          text: TextSpan(
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                              children: [
                            TextSpan(
                                text: '1.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.blue,
                                    color: Colors.white)),
                            TextSpan(
                                text:
                                    ' ein gutes Fettsäureverhältnis hemmt Entzündungen im Körper\n')
                          ])),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color: Color.fromRGBO(238, 105, 38, 1)),
                          color: Colors.white),
                    ))
              else if (title == 'Nährstoffbedarf')
                Align(
                    alignment: Alignment(0, -0.5),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                      child: RichText(
                          text: TextSpan(
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                              children: [
                            TextSpan(
                                text: '1.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.blue,
                                    color: Colors.white)),
                            TextSpan(
                                text:
                                    ' Mangel an Nährstoffen kann Pickel verursachen\n'),
                            TextSpan(
                                text: '2.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.blue,
                                    color: Colors.white)),
                            TextSpan(
                                text:
                                    ' Worauf du achten musst, erfährst du im Link')
                          ])),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color: Color.fromRGBO(238, 105, 38, 1)),
                          color: Colors.white),
                    ))
              else if (title == 'Kohlenhydrate')
                Align(
                    alignment: Alignment(0, -0.5),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                      child: RichText(
                          text: TextSpan(
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                              children: [
                            TextSpan(
                                text: '1.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor:
                                        Color.fromRGBO(35, 112, 192, 1),
                                    color: Colors.white)),
                            TextSpan(
                                text:
                                    ' Kohlenhydrate triggern Insulinproduktion\n'),
                            TextSpan(
                                text: '2.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor:
                                        Color.fromRGBO(35, 112, 192, 1),
                                    color: Colors.white)),
                            TextSpan(
                                text:
                                    ' Kohlenhydrate senken die Bindeproteine von Androgenen')
                          ])),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color: Color.fromRGBO(238, 105, 38, 1)),
                          color: Colors.white),
                    ))
              else
                Align(
                    alignment: Alignment(0, -0.65),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 25),
                          child: Text(
                            'Du hast sicher deine Gründe, diese Aufgabe zu verfolgen!\n;)',
                            style: TextStyle(fontSize: 30, color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 5,
                                  color: Color.fromRGBO(238, 105, 38, 1)),
                              color: Colors.white),
                        ))),
              Align(
                  alignment: Alignment(0, 0.4),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Center(
                        child: Text('CLICK HERE',
                            style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                      ),
                      style: OutlinedButton.styleFrom(
                          primary: Color.fromRGBO(35, 112, 192, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 20,
                          fixedSize: Size(205, 50)))),
              Align(
                  alignment: Alignment(0, 0.6),
                  child: Text(
                    '\n(Wenn du die genauen Zusammenhänge zwischen diesem To-Do und deiner Haut verstehen willst.)',
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ))
            ])),
        backgroundColor: Colors.white);
  }
}
