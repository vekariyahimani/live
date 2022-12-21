import 'package:flutter/material.dart';

class Live1 extends StatefulWidget {
  const Live1({Key? key}) : super(key: key);

  @override
  State<Live1> createState() => _Live1State();
}

class _Live1State extends State<Live1> {
   List l1=["name1","name2","name3"];
  TextEditingController txtName1=TextEditingController();






  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter UI",
          style: TextStyle(fontSize: 20, color: Colors.black54),
        ),centerTitle: true,
      ),
          body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                TextField(controller: txtName1,

                decoration: InputDecoration(
                  hintText: "Enter the Name",
                  prefixIcon: Icon(Icons.person),
                  label: Text("Name"),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width:2,color: Colors.pink),
                  )
                ),),
                SizedBox(width: 20,),

                TextField(controller: txtName2,

                  decoration: InputDecoration(
                      hintText: "Enter the Name",
                      prefixIcon: Icon(Icons.person),
                      label: Text("Name"),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width:2,color: Colors.pink),
                      )
                  ),),
                SizedBox(width: 20),
                InkWell(
                  onTap: (){
                    setState(() {
                      name1=txtName1.text;
                      name2=txtName2.text;
                       l1.removeAt("name1");
                       print(l1);
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      borderRadius: BorderRadius
                      )
                    ),
                  ),
                ),



              ],
            ),

          ),
    ));
  }
}
