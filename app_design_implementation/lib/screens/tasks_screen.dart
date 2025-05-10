import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> tasks = [
      "Call the doctor",
      "Prepare for meeting",
      "Work on Flutter project",
      "Read a book",
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 185, 168, 168),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 60),
            const Text(
              'Tasks',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                //ListView.separated: It is used to display a list of tasks with a separator between each task.
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: tasks.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: [
                              // Image network
                              Image.network(
                                'https://w7.pngwing.com/pngs/430/258/png-transparent-graphy-check-mark-right-sign-angle-photography-computer-icons-thumbnail.png',
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                tasks[index],
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Divider(
                          color: Colors.blue,
                          thickness: 1,
                          height: 10,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            
            //When the button is pressed, a SnackBar appears to confirm the task addition.
           //The SnackBar contains the message "Task added successfully!" and is displayed for two seconds.
            const SizedBox(height: 80),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Task added successfully!',
                        style: TextStyle(color: Colors.blue),
                      ),
                      backgroundColor: Colors.white,
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 195, 213, 103),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Text(
                  'Add New Task',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
