import 'package:december/Lecture19/views/student_model.dart';
import 'package:flutter/material.dart';

class ListViewAdvance extends StatelessWidget {
  const ListViewAdvance({super.key});

  @override
  Widget build(BuildContext context) {
    List<StudentModel> students = [
      StudentModel(name: "Madyan", job: "Mobile Developer"),
      StudentModel(name: "Omar", job: "AI Developer"),
      StudentModel(name: "Sara", job: "Web Developer"),
      StudentModel(name: "Sahar", job: "Front  End Developer"),
      StudentModel(name: "Asmahan", job: "Back End Developer"),
      StudentModel(name: "Lamya", job: "Full Stack Developer"),
      StudentModel(name: "Khaled", job: "UI/UX Developer"),
    ];
    return Scaffold(
      body: SafeArea(
        child: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(
              title: Text(students[index].name),
              subtitle: Text(students[index].job),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.next_plan_sharp),
            ),
            childCount: students.length,
          ),
        ),
      ),
    );
  }
}
// class ListViewAdvance extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     List<StudentModel> students = [
//       StudentModel(name: "Madyan", job: "Mobile Developer"),
//       StudentModel(name: "Omar", job: "AI Developer"),
//       StudentModel(name: "Sara", job: "Web Developer"),
//       StudentModel(name: "Sahar", job: "Front  End Developer"),
//       StudentModel(name: "Asmahan", job: "Back End Developer"),
//       StudentModel(name: "Lamya", job: "Full Stack Developer"),
//       StudentModel(name: "Khaled", job: "UI/UX Developer"),
//     ];
//     return Scaffold(
//       appBar: AppBar(),

//       body: ListView.separated(
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(students[index].name),
//             subtitle: Text(students[index].job),
//             leading: Icon(Icons.person),
//             trailing: Icon(Icons.next_plan_sharp),
//           );
//         },
//         separatorBuilder: (context, index) => Divider(thickness: 3),

//         itemCount: students.length,
//       ),
//     );
//   }
// }

// class ListViewAdvance extends StatelessWidget {
//   ListViewAdvance({super.key});

//   @override
//   Widget build(BuildContext context) {
//     List <String> category = ['All','Food','Stores','Sweets','Pickup','Donate'];
//     return Scaffold(
//     body: SingleChildScrollView(
//       child: Column(
//         children: [
//           SizedBox(
//             height: 100,
//             child: ListView.builder(
//               itemCount: category.length,
//               //itemExtent: 150,
//               prototypeItem: SizedBox(height: 90,width: 70,),
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context,index) => customContainer(category[index])),
//           ),
//            Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(height: 150,width: double.infinity,
//             color: Colors.amber,),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(height: 150,width: double.infinity,
//             color: Colors.amber,),
//           ),
//            Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(height: 150,width: double.infinity,
//             color: Colors.amber,),
//           ),
//            Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(height: 150,width: double.infinity,
//             color: Colors.amber,),
//           ),
//         ],
//       ),
//     ),
//     );
//   }
// }

// Widget customContainer(String data) {
//   return Padding(
//     padding: const EdgeInsets.all(2.0),
//     child: Container(
//       color: const Color.fromARGB(255, 52, 107, 135),
//       child: Center(child: Text(data)),
//     ),
//   );
// }
