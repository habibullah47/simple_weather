void main() {
  PerformTasks();
}

void PerformTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
}

void task1() {
  String Result = 'It\'s task1';
  print('Task1 Completed');
}

Future<String> task2() async {
  String Result;

  Duration threeSeconds = Duration(seconds: 4);
  await Future.delayed(
    threeSeconds,
    () {
      Result = 'It\'s task2';
      print('Task2 Completed');
    },
  );
  return String.fromCharCode(23); //just random tapping.
}

void task3(String task2Data) {
  String Result = 'It\'s task3';
  print('Task3 Completed with $task2Data');
}
