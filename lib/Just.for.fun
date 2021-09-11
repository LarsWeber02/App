FutureBuilder(
        future: connectToFirebase(),
            builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return Center(child: CircularProgressIndicator());
          } else {
            return StreamBuilder<DocumentSnapshot> (
              stream: database.getTodos(),
              builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                if(!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  Map<String, dynamic> items = snapshot.data!.data as Map<String, dynamic>;
                  return ListView.separated(
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 10,
                        );
                      },
                      padding: EdgeInsets.all(10),
                      itemCount: items.length,
                      itemBuilder: (BuildContext, i) {
                        String key = items.keys.elementAt(i);
                        return ToDoItem(
                          key,
                          items[key]!,
                              () => toggleDone(key, items[key]),
                        );
                      });
                }
              }
            );
          }
            },
      )