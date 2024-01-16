import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:untitled5/result.dart';

class company extends StatefulWidget {
  const company({super.key});

  @override
  State<company> createState() => _companyState();
}

class _companyState extends State<company> {
Database ? database;
Future<void >CreateDatabase ()async  {
  await openDatabase(
    "register",
    version: 1,
    onCreate: (database,version)async{
    database.execute("CREATE TABLE register (ID INT PRIMARY)");
    }
  ).then((value) async{
    database = value;
    setState(() {

    });
  });
}
void insertDatabase({
required String name
})
{
  database!.transaction((txn) {
    txn.rawInsert("INSERT INTO re");
  });
}
  final _formkey = GlobalKey<FormState>();
  String Result = "osama";
  TextEditingController idController = TextEditingController();
  TextEditingController Emailcontroller =TextEditingController();
  TextEditingController Descriptioncontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "New Tasks",
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextFormField(
                controller: idController,
                validator: (value)
                {
                  if(value!.isEmpty)
                  {
                    return "Enter the Id";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: "ID",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),

              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: Emailcontroller,
                validator: (value)
                {
                  if(value!.isEmpty)
                  {
                    return "Enter the Email";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),

              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: Descriptioncontroller,
                validator: (value)
                {
                  if(value!.isEmpty)
                  {
                    return "Enter the Description";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    hintText: "Description",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),

              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(),
                ),
                  onPressed: ()
                  {

                    if(_formkey.currentState!.validate())
                    {
                 Task task = new Task(

                 );
                 databaseOperations.insertTask(task);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(
                          "Save Successfully"
                        ))
                      );
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>x(),
                      settings: RouteSettings(arguments: Result)
                      ));
                    }
                  },
                  child: Text(
                    "Save",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
