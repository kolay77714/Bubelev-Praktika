// Задание 1
import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';
void main() async {
final file = File('numsTask1.txt');
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
List<String> ai = [];
String vrem = "";
for (int i = 0; i < nums_txt.length; i++) {
if (nums_txt[i] != " ") {
vrem += nums_txt[i];
}
if (nums_txt[i] == " " || i + 1 == nums_txt.length) {
ai.add(vrem);
vrem = "";
}
}
for(int i = 0;i<ai.length;i++){
String a = ai[i];
bool bub = false;
for(int j = 0; j<a.length;j++){
bub = !bub;
}
if(bub){
print(a);
}
}
}
// Задание 2
import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';
void main() async {
final file = File('numsTask1.txt');
String nums_txt = "";
Stream<String> lines = file
.openRead()
.transform(utf8.decoder) // Decode bytes to UTF-8.
.transform(LineSplitter()); // Convert stream to individual lines.
try {
await for (var line in lines) {
nums_txt += line;
nums_txt +=" ";
}
} catch (e) {
print('Error: $e');
}
print(nums_txt);
// Задание 3
import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';
void main(){
int nums = int.parse(stdin.readLineSync()!);
if(nums%10==0 && nums%2==0){
print("является");
} else{print("не является");}
}
// Задание 4
import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';
void main(){
List<int> nums = [];
bool pr_1 = true;
while(pr_1){
String element = stdin.readLineSync()!;
if(element != ""){
try{if(int.parse(element)>=0){
nums.add(int.parse(element));
} else{pr_1 = false;}}
catch(e){
print('Error: $e');
}
}else{pr_1 = false;}
}
int summa = 0;
try{
int a = int.parse(stdin.readLineSync()!);
for(int i = 0; i<nums.length;i++){
if(nums[i]%a ==0){
summa += nums[i];
}
}
} catch(e){
print('Error: $e');
}
print(summa);
}
// Задание 5
import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';
void out(List<List<int>> a,int n,int m){
for(int i = 0;i<n;i++){
for(int j = 0;j<m;j++){
stdout.write("${a[i][j]} ");
}
print("\n");
}
}
void main(){
int n = 5;
int m = 5;
List<List<int>> a = List.generate(n, (index) => List.generate(m,(index) =>
Random().nextInt(2),growable: true ));
out(a, n, m); // вывод изначальной матрицы
for(int i = 0;i<n;i++){ //добавление нового слолбца с заполнением
bool tern = false;
for(int j = 0;j<m;j++){
if(a[i][j]==1){
tern = !tern;
}
if(j+1==m){
if(tern){
a[i].add(1);
} else{a[i].add(0);}
}
}
}
print("\n");
out(a, n, m+1); //вывод получившийся матрицы
}
// Задание 6
import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';
void main(){
List<double> a = [1.5,6.3,-2.5,0,-0.2,4.1];
List<double> b = [];
List<double> c = [];
for(int i = 0 ; i<a.length;i++){
if(a[i]>=0){
b.add(a[i]);
} else{c.add(a[i]);}
}
print(b);
print(c);