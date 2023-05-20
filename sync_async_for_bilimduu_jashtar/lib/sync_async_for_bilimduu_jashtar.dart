import 'dart:io';

void main() {
  resulTasks();
}

void resulTasks() async {
  task1();
  String stringTask2 = await task2();
  task3(stringTask2);
}

void task1() {
  print('task 1 chikti');
}

Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 3);
  String? result;
  // sleep(threeSeconds);
  await Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('task 2 chikti');
  });
  return result.toString();
}

void task3(String task2String) {
  print('task 3 chikti : $task2String');
}
