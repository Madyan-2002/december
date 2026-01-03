import 'package:flutter/material.dart';

class Buttons  extends StatefulWidget{
  @override
   
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  List <String> colors = ['Red','Blue','White','Pink'];
    String? SelectedItem = 'Red';
    String? iniValue;
    String? val;
    bool? status = false;
    String? selectedGender;

 @override
  Widget build(BuildContext context) {  
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: [
          PopupMenuButton(
            
            icon: Icon(Icons.abc),
            //iconSize: 50,
            iconColor: Colors.amber,
            color: Colors.pink,
            elevation: 1,
            offset: Offset(5, 40),
            menuPadding: EdgeInsets.all(10),
            initialValue: iniValue,
            onSelected: (value) => setState(() {
  print('before: $iniValue');
  iniValue = value;
  print('after: $iniValue');
}),

            itemBuilder: (context){
            return colors.map((c)=>PopupMenuItem(child: Text(c), value: c,)).toList();
          }),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              ElevatedButton(onPressed:(){
          
              },
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ), child: Text("Hello ") 
              ),
              TextButton(onPressed:(){}, child: Text("forget password ? ")
              ),
              TextButton.icon(onPressed: (){}, label: Text("SDK"),icon: Icon(Icons.star),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.phone)
              ),
              IconButton.filled(onPressed: (){}, icon: Icon(Icons.abc)
              ),
              IconButton.outlined(onPressed: () {}, icon: Icon(Icons.add)
              ),
              OutlinedButton(onPressed: (){}, child: Text("Hi")
              ),
              OutlinedButton.icon(onPressed: (){}, label: Text("Flutter"), icon: Icon(Icons.percent)
              ),
              DropdownButton(items: colors.map((c) => DropdownMenuItem(value: c, child: Text(c))).toList(),
              elevation: 5,
              value:SelectedItem,
              onChanged:(newItem){
                setState(() {
                  SelectedItem = newItem;
                });
              },
              ),
              FloatingActionButton(onPressed: (){}
              ),
              Text('What is  your fav food'),
                RadioGroup <String> (
                  groupValue: selectedGender,
                  onChanged: (v){
                  setState(() {
                    selectedGender = v;
                  });
                }, child: Column(
                  children: [
                    RadioListTile(value: 'female', title: Text('Female')),
                    RadioListTile(value: 'male', title: Text('Male')),
                  ],
                )
                ),
                CheckboxListTile(
                  title: Text('Madyan'),
                  value: status, onChanged: (val){
                    setState(() {
                      status  = val;
                    });
                  }
                ),
          
            ],
          ),
        )
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){}
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );

  }
}