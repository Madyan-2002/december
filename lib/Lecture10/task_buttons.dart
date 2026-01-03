import 'package:flutter/material.dart';

class TaskButtons extends StatefulWidget {
  @override
  State<TaskButtons> createState() => _TaskButtonsState();
}

class _TaskButtonsState extends State<TaskButtons> {

  List <String> items = ['Profile','Settings','Logout'];
  List <String> colors = ['Red','Blue','White','Pink'];
   String? selectedColor = 'Red';
   bool isChecked = false;

   String? SelectedPhone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        actions: [
       PopupMenuButton(
        onSelected: (value) {
    print(value);
      },
        icon: Icon(Icons.menu) ,
        itemBuilder: (context) {
          return items.map((x) => PopupMenuItem(value: x , child: Text(x) )).toList();
        } ,
        ),
        ]
        
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  print("Elevated Button");
                },
                child: Text("Madyan"),
              ),

              SizedBox(height: 20,),

              DropdownButton(items: colors.map((c) => DropdownMenuItem(value : c ,child: Text(c))).toList(),
              value:selectedColor,
              elevation: 5,
              dropdownColor: Colors.purpleAccent,
               onChanged: (newColor) {
                setState(() {
                  selectedColor = newColor;
                });
                 print(newColor);
               }),
               
                SizedBox(height: 20,),
                
                CheckboxListTile(
                  activeColor: Colors.blueAccent,
                  title:   Text(
                  isChecked ? 'Checked' : 'Not Checked',
                ),
                  
                  value: isChecked,
                 onChanged:(value) {
                  setState(() {
                    isChecked = value!;
                  });
                 }),

                  SizedBox(height: 20,),

                  RadioGroup <String>(
                    groupValue: SelectedPhone,
                    onChanged: (newPhone) {
                   setState(() {
                     SelectedPhone = newPhone;
                   });
                    

                  },
                   child:Column(children: [
                    RadioListTile(value: 'Samsung', title: Text('Samsung')),
                    RadioListTile(value: 'iphone', title: Text('iphone')),
                    RadioListTile(value: 'Nokia', title: Text('Nokia')),

                   ],
                   )
                ),
          
            ],
          ),
        ),
      ),
    );
  }
}
