import 'package:flutter/material.dart';
import 'package:to_do/Utilities/app_colors.dart';
import 'package:to_do/Utilities/app_styles.dart';

class AddTaskTab extends StatelessWidget {
  final TextEditingController taskController;
  final TimeOfDay? selectedTime;
  final VoidCallback onSelectTime;

  const AddTaskTab({
    super.key,
    required this.taskController,
    required this.selectedTime,
    required this.onSelectTime,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.08,
        vertical: height * 0.06,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Add New Task',
            style: Theme.of(context).textTheme.headlineMedium,
          ),

          SizedBox(height: height * 0.04),

          TextField(
            controller: taskController,
            decoration: const InputDecoration(
              hintText: 'Enter your task',
              prefixIcon: Icon(Icons.task_alt),
            ),
          ),

          SizedBox(height: height * 0.03),

          InkWell(
            onTap: onSelectTime,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.04,
                vertical: height * 0.02,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColors.primaryLightColor,
                  width: 2,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedTime == null
                        ? 'Select Time'
                        : selectedTime!.format(context),
                    style: selectedTime == null
                        ? AppStyles.regular20GreyLight
                        : AppStyles.regular14Primary,
                  ),
                  Icon(
                    Icons.access_time,
                    color: AppColors.primaryLightColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}