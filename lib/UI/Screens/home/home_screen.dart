import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/l10n/app_localization.dart';
import 'package:to_do/Utilities/app_colors.dart';
import 'package:to_do/UI/Screens/settings/settings_tab.dart';
import 'package:to_do/UI/providers/task_provider.dart';
import 'package:to_do/UI/Screens/home/add_task_tab.dart';
import '../../../Utilities/app_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final TextEditingController taskController = TextEditingController();
  TimeOfDay? selectedTime;

  @override
  void dispose() {
    taskController.dispose();
    super.dispose();
  }

  void saveTask() {
    final taskName = taskController.text.trim();

    if (taskName.isEmpty || selectedTime == null) {
      return;
    }

    Provider.of<TaskProvider>(context, listen: false).addTask(
      title: taskName,
      time: selectedTime!,
    );

    taskController.clear();

    setState(() {
      selectedTime = null;
      currentIndex = 0;
    });
  }

  void onBottomNavTap(int index) {
    if (index == 1) {
      if (currentIndex == 1) {
        saveTask();
      } else {
        setState(() {
          currentIndex = 1;
        });
      }

      return;
    }

    setState(() {
      currentIndex = index;
    });
  }

  Future<bool> confirmDelete() async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Are you sure?'),
          content: const Text(
            'Do you want to delete this task?',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: Text(
                'Yes',
                style: TextStyle(
                  color: AppColors.redColor,
                ),
              ),
            ),
          ],
        );
      },
    );

    return result ?? false;
  }

  String formatTime(TimeOfDay time) {
    final hour = time.hourOfPeriod == 0 ? 12 : time.hourOfPeriod;
    final minute = time.minute.toString().padLeft(2, '0');
    final period = time.period == DayPeriod.am ? 'AM' : 'PM';

    return '$hour:$minute $period';
  }

  Future<void> selectTime() async {
    final pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      setState(() {
        selectedTime = pickedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: currentIndex == 0
          ? buildHomeTab(height, width)
          : currentIndex == 1
          ? AddTaskTab(
        taskController: taskController,
        selectedTime: selectedTime,
        onSelectTime: selectTime,
      )
          : const SettingsTab(),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onBottomNavTap,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Task List',
          ),

          BottomNavigationBarItem(
            icon: Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                color: AppColors.primaryLightColor,
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.whiteColor,
                  width: 4,
                ),
              ),
              child: Icon(
                currentIndex == 1 ? Icons.check : Icons.add,
                color: Colors.white,
                size: 30,
              ),
            ),
            label: '',
          ),

          const BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  Widget buildHomeTab(double height, double width) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.app_title,
          style: Theme.of(context)
              .textTheme
              .headlineLarge
              ?.copyWith(
            color: Colors.white,
          ),
        ),
      ),
      body: Consumer<TaskProvider>(
        builder: (context, taskProvider, child) {
          if (taskProvider.tasks.isEmpty) {
            return Center(
              child: Text(
                'No tasks yet',
                style: AppStyles.regular20GreyLight,
              ),
            );
          }

          return ListView.builder(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.05,
              vertical: height * 0.025,
            ),
            itemCount: taskProvider.tasks.length,
            itemBuilder: (context, index) {
              final task = taskProvider.tasks[index];

              return Dismissible(
                key: ValueKey(task),
                direction: DismissDirection.startToEnd,

                background: Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: AppColors.redColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.centerLeft,
                  child: const Row(
                    children: [
                      Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Delete',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                confirmDismiss: (direction) async {
                  return await confirmDelete();
                },

                onDismissed: (direction) {
                  taskProvider.deleteTask(index);
                },

                child: Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                task.title,
                                style: task.isDone
                                    ? AppStyles.bold18Black.copyWith(
                                  color: AppColors.greenColor,
                                )
                                    : AppStyles.bold18Black,
                              ),

                              const SizedBox(height: 5),

                              Row(
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    size: 18,
                                    color: task.isDone
                                        ? AppColors.greenColor
                                        : AppColors.primaryLightColor,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    formatTime(task.time),
                                    style: task.isDone
                                        ? AppStyles.regular14Primary.copyWith(
                                      color: AppColors.greenColor,
                                    )
                                        : AppStyles.regular14Primary,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(width: 10),

                        ElevatedButton(
                          onPressed: task.isDone
                              ? null
                              : () {
                            taskProvider.toggleTask(index);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: task.isDone
                                ? AppColors.greenColor
                                : AppColors.primaryLightColor,
                            foregroundColor: Colors.white,
                            disabledBackgroundColor:
                            AppColors.greenColor,
                            disabledForegroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            task.isDone ? 'Done!' : '✓',
                            style: AppStyles.bold14White,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}