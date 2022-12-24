// Задание 1
import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';
 
void main() {
  int n = int.parse(stdin.readLineSync()!);
  int proiz = 1;
  for (int i = 1; i <= n; i++) {
    if (i % 3 == 0) {
      proiz *= i;
    }
  }
  print(proiz);
}
// Задание 2
import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';
 
void main() async {
  final file = File('numsTask2.txt');
  String nums_txt = "";
  Stream<String> lines = file
      .openRead()
      .transform(utf8.decoder) // Decode bytes to UTF-8.
      .transform(LineSplitter()); // Convert stream to individual lines.
  try {
    await for (var line in lines) {
      nums_txt += line;
    }
  } catch (e) {
    print('Error: $e');
  }
 
  List<double> ai = [];
  String vrem = "";
  double out = 0;
 
  for (int i = 0; i < nums_txt.length; i++) {
    if (nums_txt[i] != ";") {
      vrem += nums_txt[i];
    }
    if (nums_txt[i] == ";" || i + 1 == nums_txt.length) {
      ai.add(double.parse(vrem));
      vrem = "";
    }
  }
 
  for (int i = 0; i < ai.length; i++) {
    if (ai[i] > 0) {
      out += ai[i];
    }
    if (ai[i] == 0) {
      i = ai.length;
    }
  }
  print(out);
}
// Задание 3
import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';
 
void main() async {
  final file = File('numsTask3.txt');
  String nums_txt = "";
  Stream<String> lines = file
      .openRead()
      .transform(utf8.decoder) // Decode bytes to UTF-8.
      .transform(LineSplitter()); // Convert stream to individual lines.
  try {
    await for (var line in lines) {
      nums_txt += line;
    }
  } catch (e) {
    print('Error: $e');
  }
 
  List<int> ai = [];
  String vrem = "";
 
  for (int i = 0; i < nums_txt.length; i++) {
    if (nums_txt[i] != ",") {
      vrem += nums_txt[i];
    }
    if (nums_txt[i] == "," || i + 1 == nums_txt.length) {
      ai.add(int.parse(vrem));
      vrem = "";
    }
  }
 
  int min = ai.first;
  int max = ai.first;
 
  for (int i = 0; i < ai.length; i++) {
    if (ai[i] > max) {
      max = ai[i];
    }
    if (ai[i] < min) {
      min = ai[i];
    }
    if (ai[i] == 0) {
      i = ai.length;
    }
  }
 
  print(min);
  print(max);
 
}
// Задание 4
import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';
 
void main() async {
  final file = File('numsTask4.txt');
  String nums_txt = "";
  Stream<String> lines = file
      .openRead()
      .transform(utf8.decoder) // Decode bytes to UTF-8.
      .transform(LineSplitter()); // Convert stream to individual lines.
  try {
    await for (var line in lines) {
      nums_txt += line;
    }
  } catch (e) {
    print('Error: $e');
  }
 
  List<int> ai = [];
  String vrem = "";
 
  for (int i = 0; i < nums_txt.length; i++) {
    if (nums_txt[i] != " ") {
      vrem += nums_txt[i];
    }
    if (nums_txt[i] == " " || i + 1 == nums_txt.length) {
      ai.add(int.parse(vrem));
      vrem = "";
    }
  }
  int otvet = 0;
  for (int i = 0; i < ai.length - 1; i++) {
    if (ai[i] == ai[i + 1]) {
      int vrem = 1;
      bool vrem_0 = true;
      while (ai[i] == ai[i + 1] && vrem_0) {
        vrem++;
        if (i < ai.length-2 ) {
          i++;
        } else {
          vrem_0 = false;
        }
      }
      otvet += vrem;
    }
  }
  print(otvet);
}
// Задание 5
import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';
 
void main() {
  int x_0 = -1;
  int x_1 = 3;
  int y_0 = -2;
  int y_1 = 4;
  print("Введите А");
  double a = double.parse(stdin.readLineSync()!);
  print("Введите В");
  double b = double.parse(stdin.readLineSync()!);
 
  if (x_0 < a && a < x_1 && y_0 < b && b < y_1) {
    print("Входит");
  } else {
    print("Не входит");
  }
}
// Задание 6
import 'dart:io';
import 'dart:math';
void main() {
int x1 = -2;
int x2 = 0;
int x3 = 2;
int y1 = -3;
int y2 = 2;
int y3 = -3;
print("Введите Х");
double x0 = double.parse(stdin.readLineSync()!);
print("Введите Y");
double y0 = double.parse(stdin.readLineSync()!);
 
 
double a = (x1 - x0) * (y2 - y1) - (x2 - x1) * (y1 - y0);
double b = (x2 - x0) * (y3 - y2) - (x3 - x2) * (y2 - y0);
double c = (x3 - x0) * (y1 - y3) - (x1 - x3) * (y3 - y0);
 
if ((a >= 0 && b >= 0 && c >= 0) || (a <= 0 && b <= 0 && c <= 0)){
 print("входит");
} else{print("не входит");}
}
