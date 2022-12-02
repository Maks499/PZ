// import 'package:rcis_ep_task_one2/rcis_ep_task_one2.dart' as rcis_ep_task_one2;
//                                                                          УП Практическая работа 1.2
// Задание 1 УП 1.2
// import 'dart:io';
// import 'dart:math';

// void main() {
//   List<int>list = List.generate(100, (i) =>Random().nextInt(100)+0);
//   int a = 300;
//   for(int i = 0; i < list.length; i++){
//     list[i] = a - 3;
//     a -= 3;
//   }
//   stdout.write(list);
// }


// Задание 2 УП 1.2
// import 'dart:io';
// import 'dart:math';

// void main() {
//   List<int>list = List.generate(100, (i) =>Random().nextInt(100)+0);
//   int a = 1;
//   for(int i = 0; i < list.length; i++){
//       list[i] = a + 2;
//       a += 2;
//   }
//   stdout.write(list);
// }




// Задание 3 УП 1.2
// import 'dart:io';

// void main(){
//   int a = 1;
//   List<List<int>> list = List.generate(3, (i) => List.generate(3, (j) => 0)); 
//   for(int i = 0; i < list.length; i++){
//     list[i][0] = 1;
//   }    
//   for(int j = 0; j < list.length; j++){
//     list[0][j] = 1;
//   }
//   for(int i = 0; i < list.length; i++)
//   {
//     for(int j = 0; j < list.length; j++){
//       stdout.write("${list[i][j]} ");
//     }
//     stdout.writeln();
//   }
//   for(int i = 1; i < list.length; i++)
//   {
//     for(int j = 1; j < list.length; j++){
//       list[i][j] = list[i - 1][j] + list[j - 1][i];
//     }
//   }
//   stdout.writeln();
//   for(int i = 0; i < list.length; i++)
//   {
//     for(int j = 0; j < list.length; j++){
//       stdout.write("${list[i][j]} ");
//     }
//     stdout.writeln();
//   }
// }




// Задание 4 УП 1.2
// import 'dart:io';
// import 'dart:math';

// void main(){
//   List<List<int>> temperature = List.generate(12, (i) => List.generate((30), (j) => Random().nextInt(30)-15));
//    for(int i = 0; i<temperature.length; i++){
//       stdout.write('${i+1} месяц \t');
//     for(int j = 0; j<temperature[i].length; j++){
//      stdout.write('${temperature[i][j]} ');
//   }
//   print('\n');
// }
// List<int> res = Avg(temperature);
// res.sort();
// print(res);
// }
// List<int> Avg (List<List<int>> temperature){
// List<int> avg = [];
// for(int i = 0; i<temperature.length; i++){
// double sum = 0;
// for(int j = 0; j<temperature[i].length; j++){
// sum+= temperature[i][j];
// }
// avg.add(sum~/temperature[i].length);
// }
// return avg;
// }




// Задание 5 У.П 1.2
// import 'dart:io';
// import 'dart:math';

// void main(){
//   int i = 0;
//   List<List<int>> temperature = List.generate( 12, (i) => List.generate((30), (j) => Random().nextInt(30) -15));
//   var map = {
//   'Январь': temperature[i],
//   "Февраль": temperature[i + 1],
//   'Март': temperature[i + 2],
//   'Апрель': temperature[i + 3],
//   'Май': temperature[i + 4],
//   'Июнь': temperature[i + 5],
//   'Июль': temperature[i + 6],
//   'Август': temperature[i + 7],
//   'Сентябрь': temperature[i + 8],
//   'Октябрь': temperature[i + 9],
//   'Ноябрь': temperature[i + 10],
//   'Декабрь': temperature[i + 11] 
//   };
//   Avg(map, temperature);
// }
//   Map Avg(map, res) {
//   var otv = {
//   'Январь': 0,
//   "Февраль": 0,
//   'Март': 0,
//   'Апрель': 0,
//   'Май': 0,
//   'Июнь': 0,
//   'Июль': 0,
//   'Август': 0,
//   'Сентябрь': 0,
//   'Октябрь': 0,
//   'Ноябрь': 0,
//   'Декабрь': 0
//   };
// double seredina = 0;
// for (var key in map.keys) {
// double sum = 0;
// for (int i = 0; i < 30; i++) {
// sum += map[key]![i];
// }
// otv[key] = (sum ~/ 30);
// }
// for (var item in otv.entries) {
// print("${item.key} - ${item.value}");
// }
// return otv;
// }
