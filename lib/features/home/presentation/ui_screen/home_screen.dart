import 'package:flutter/material.dart';
import '../../../../features/add_task/presentation/ui_screen/add_task_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F0FF), 
      appBar: AppBar(
        title: const Text("Simple To-Do List App UI Design", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: const Color(0xFF673AB7), 
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Text(
              'Manage your time',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF311B92)),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.only(bottom: 15),
                  elevation: 4,
                  shadowColor: Colors.black26,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: const Border(left: BorderSide(color: Color(0xFF673AB7), width: 5)), 
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(15),
                      leading: const CircleAvatar(
                        backgroundColor: Color(0xFFEDE7F6),
                        child: Icon(Icons.calendar_today, color: Color(0xFF673AB7)),
                      ),
                      title: Text('Task Title ${index + 1}', style: const TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: const Text('Tap to view details'),
                      trailing: const Icon(Icons.check_circle_outline, color: Colors.green),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const AddTaskScreen()));
        },
        backgroundColor: const Color(0xFF673AB7),
        icon: const Icon(Icons.add_task, color: Colors.white),
        label: const Text('New Task', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}