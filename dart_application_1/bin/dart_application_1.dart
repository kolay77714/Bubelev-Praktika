// Задание 1
import 'dart:io';
import 'dart:math';

void main() {
  var arr = [];
  for (int i = 0; i < 10; i++) {
    arr.add(Random().nextInt(10));
  }
  print(arr);

  int min_index = 0;
  int min = arr.first;
  for (int i = 0; i < arr.length; i++) {
    if (min > arr[i]) {
      min = arr[i];
      min_index = i;
    }
  }
  print(min);
  print(min_index);
}
// Задание 2
import 'dart:io';
import 'dart:math';

void main() {
  double sr = 0;
  double sum = 0;
  int pr = 1;
  int chisla_lenght = 0;
  bool c = true;

  while (c) {
    int a = int.parse(stdin.readLineSync()!);

    if (a == 0) {
      c = false;
    } else {
      chisla_lenght++;
      sum += a;
      pr *= a;

    }
  }
  sr = (sum / chisla_lenght);

  print('Summa= $sum');
  print('Proizwedenie= $pr');
  print('Srednee arifmet= $sr');
}
// Задаие 3
import 'dart:io';
import 'dart:math';

void main() {
  List<String> list = [];

  bool a = true;

  while (a) {
    String b = stdin.readLineSync()!;
    if (b != " " && b != "") {
      list.add(b);
    } else {
      a = false;
    }
  }

  int min = int.parse(list[0]);
  int min_lenght = list[0].length;
  int max = int.parse(list[0]);
  int max_lenght = list[0].length;

  for (int i = 0; i < list.length; i++) {
    if (min_lenght < list[i].length) {
      min = int.parse(list[i]);
      min_lenght = list[i].length;
    } else if (max_lenght > list[i].length) {
      max = int.parse(list[i]);
      max_lenght = list[i].length;
    }
  }
  print(min);
  print(max);
}
// Задание 4
import 'dart:io';
import 'dart:math';

List<int> zapol(int min, int max) {
  List<int> ai =
      List.generate(10, (index) => (Random().nextInt(max - min) + min));

  return (ai);
}

void main() {
  print("введите мин");
  int min = int.parse(stdin.readLineSync()!);
  print("введите мах");
  int max = int.parse(stdin.readLineSync()!);

  List ai = zapol(min, max);

  for (int i = 0; i < ai.length; i++) {
    stdout.write("${ai[i]} ");
  }
}
// Задание 5
import 'dart:io';
import 'dart:math';

void main() {
  String str = stdin.readLineSync()!;
  int quantity_word = 1;
  bool a = false;
  for (int i = 0; i < str.length; i++) {
    if (str[i] != " ") {
      a = true;
    } else if (str[i] == " " && a) {
      quantity_word++;
    }
  }

  if (a) {
    str = "start" + str + "end";
    print(quantity_word);
    print(str);
  } else {
    print("нет слов");
  }
}