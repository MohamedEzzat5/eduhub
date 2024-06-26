import 'package:bloc/bloc.dart';
import 'package:faculty_app/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'app.dart';

void main() {
  runApp(const FacultyApp());
  Bloc.observer = AppBlocObserver();
}

// class ToggleListViewToGridViewScreen extends StatefulWidget {
//   const ToggleListViewToGridViewScreen({super.key});

//   @override
//   _ToggleListViewToGridViewScreenState createState() =>
//       _ToggleListViewToGridViewScreenState();
// }

// class _ToggleListViewToGridViewScreenState
//     extends State<ToggleListViewToGridViewScreen> {
//   bool isListView = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("ToggleListViewToGridViewScreen"),
//         actions: [
//           IconButton(
//             onPressed: () {
//               setState(() {
//                 isListView = !isListView;
//               });
//             },
//             icon: const Icon(Icons.menu),
//           ),
//         ],
//       ),
//       body: isListView ? buildListView() : buildGridView(),
//     );
//   }

//   Widget buildListView() {
//     return ListView.builder(
//       itemCount: 10,
//       itemBuilder: (context, index) {
//         return Container(
//           alignment: Alignment.center,
//           width: double.infinity,
//           color: Colors.cyanAccent,
//           height: 100,
//           padding: const EdgeInsets.all(8.0),
//           child: const Text(
//             'data',
//             style: TextStyle(fontSize: 24),
//           ),
//         );
//       },
//     );
//   }

//   Widget buildGridView() {
//     return GridView.builder(
//       itemCount: 10,
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         childAspectRatio: 2,
//         crossAxisSpacing: 10,
//         mainAxisSpacing: 10,
//       ),
//       itemBuilder: (context, index) {
//         return Container(
//           alignment: Alignment.center,
//           color: Colors.cyanAccent,
//           height: 100,
//           padding: const EdgeInsets.all(8.0),
//           child: const Text(
//             'data',
//             style: TextStyle(fontSize: 24),
//           ),
//         );
//       },
//     );
//   }
// }
