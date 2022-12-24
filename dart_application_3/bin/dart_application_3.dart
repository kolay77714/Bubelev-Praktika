// Задание 1
import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';
 
List<int> transforming(String bub_0) {// функция принимает стринг
  List<int> a = []; // создается пустой массив
  String bub = ""; // создается пустоая строка
  bool m = true; //бул м труе
 
  for (int i = 0; i < bub_0.length; i++) { //перебор строки
    while (bub_0[i] != " " && m) { //работает цикл пока текущий элемнт не пробел
      bub += bub_0[i];
      if (i < bub_0.length - 1) { //проверка есть ли следущее
        i++; //если есть то и++
      } else {
        m = false; //если нет то заканчиваем перебор
      }
    }
    a.add(int.parse(bub)); //добавляет число в массив
    bub = ""; //обнуляет временную переменную
  }
  return (a);
}
 
void main() async {
  final file = File('input.txt');
  var output = File('output.txt');
  Stream<String> lines = file.openRead() //читает файл
      .transform(utf8.decoder) // Decode bytes to UTF-8.
      .transform(LineSplitter()); // Convert stream to individual lines.
  List<String> ai = []; // создаем пустой массив, который принимает строки
  await for (var line in lines) { // перебирает строки
    ai.add(line); // каждую линию добавляют как отделаьный элемент массива
  }
  List<int> winning_numbers = transforming(ai[0]); // переводим первую строку в целочисленный массив
  List<int> numbers_tickets = transforming(ai[1]); // переводим первую строку в целочисленный массив
  var sink = output.openWrite(); //  открываем файл output.
  for (int i = 0; i < numbers_tickets[0]; i++) { //  проверка строк ( сколько будет тикетов, столько и строк )
    List<int> ticket = transforming(ai[i + 2]);
    int num = 0; // создание пустой переменной, для того, сколько в текущем билете совпадающий чисел
    for (int n = 0; n < winning_numbers.length; n++) { 
      for (int m = 0; m < ticket.length; m++) {
        if (ticket[m] == winning_numbers[n]) {
          num++; // нам ++ если число в тикете совпадает с правильным числом
        }
      }
    }

    if (num >= 3) { // если 3 числа совпадает 
      sink.write('Lucky\n'); 
    } else sink.write('Unlucky\n');

  }
  sink.close(); // закрываем файл output.
}
// Задание 2
import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';

List<int> transforming(String bub_0) {
  // функция принимает стринг
  List<int> a = []; // создается пустой массив
  String bub = ""; // создается пустоая строка
  bool m = true; //бул м труе

  for (int i = 0; i < bub_0.length; i++) {
    //перебор строки
    while (bub_0[i] != " " && m) {
      //работает цикл пока текущий элемнт не пробел
      bub += bub_0[i];
      if (i < bub_0.length - 1) {
        //проверка есть ли следущее
        i++; //если есть то и++
      } else {
        m = false; //если нет то заканчиваем перебор
      }
    }
    a.add(int.parse(bub)); //добавляет число в массив
    bub = ""; //обнуляет временную переменную
  }
  return (a);
}

void main() async {
  final file = File('nums.txt');

  Stream<String> lines = file
      .openRead() //читает файл
      .transform(utf8.decoder) // Decode bytes to UTF-8.
      .transform(LineSplitter()); // Convert stream to individual lines.
  List<String> ai = []; // создаем пустой массив, который принимает строки
  await for (var line in lines) {
    // перебирает строки
    ai.add(line); // каждую линию добавляют как отделаьный элемент массива
  }
  String aip = '';
  List<int> a = transforming(ai[0]);
  print(a);
  for (int i = 0; i < a.length; i++) {
    if (a[i] % 2 == 0) {
      a.remove(a[i]);
    }
  }
  print(a);
  for (int i = 0; i < a.length; i++) {
    aip = aip + a[i].toString() + " ";
  }
  var sink = file.openWrite(); //  открываем файл outpu

  sink.write(aip);
  sink.close();
  // Задание 3
  import 'dart:io';
import 'dart:math';
import 'dart:collection';
import 'dart:async';
import 'dart:convert';

List<int> transforming(String bub_0) {
  // функция принимает стринг
  List<int> a = []; // создается пустой массив
  String bub = ""; // создается пустоая строка
  bool m = true; //бул м труе

  for (int i = 0; i < bub_0.length; i++) {
    //перебор строки
    while (bub_0[i] != " " && m) {
      //работает цикл пока текущий элемнт не пробел
      bub += bub_0[i];
      if (i < bub_0.length - 1) {
        //проверка есть ли следущее
        i++; //если есть то и++
      } else {
        m = false; //если нет то заканчиваем перебор
      }
    }
    a.add(int.parse(bub)); //добавляет число в массив
    bub = ""; //обнуляет временную переменную
  }
  return (a);
}

void main() async {
  // var list = [1, 9, 6, 7, 4, 8, 5];
  final file = File('height.txt');

  Stream<String> lines = file
      .openRead() //читает файл
      .transform(utf8.decoder) // Decode bytes to UTF-8.
      .transform(LineSplitter()); // Convert stream to individual lines.
  List<String> ai = []; // создаем пустой массив, который принимает строки
  await for (var line in lines) {
    // перебирает строки
    ai.add(line); // каждую линию добавляют как отделаьный элемент массива
  }
  var list = transforming(ai[0]);
  int index1 = 0;
  int index2 = 0;
  int volume = 0;
  for (int i = 0; i < list.length - 1; i++) {
    for (int j = 1 + i; j < list.length; j++) {
      int visot = list[i] < list[j] ? list[i] : list[j];
      int lenght = j - i;
      if (volume < visot * lenght) {
        volume = visot * lenght;
      }
    }
  }
  print(volume);
}