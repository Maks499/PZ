// 1 задание УП1.1                                                  УП Практическая работа 1.1
// import 'dart:io';
// import 'dart:math';

// void main() {
// List<int>list = []; //Объявляем массив
// var rng = Random(); //переменная, в которой хранится рандомное число
// for(var i = 0; i < 10; i++){ //заполнение массива случайными числами 
// list.add(rng.nextInt(100)); //в диапозоне от 0 до 100
// }
// var min = 999999; //важно чтоб начальное значение пременной min было больше значение элемента 

// for(var i in list){ //поиск минимального элемента в массиве
//   if(i < min){
//   min = i;
//   } 
// }

// for(var k in list){ //вывод массива на экран
// stdout.write("$k ");
// }
// stdout.write('\nМинимальный элемент в массиве - $min'); //вывод мин элемента
// }



//  Задание 2 УП1.1
//  import 'dart:io';

//  void main(){
//    List<int>list = []; //Объявляем массив
//    print("Введите элемент массива:");
//    int? a = int.parse(stdin.readLineSync()!);
 
//    if (a != 0){
//      list.add(a);
//      while (a != 0){
//        print("Введите элемент массива:");
//       a = int.parse(stdin.readLineSync()!);
//       list.add(a);
//    }
// }
// var S = 0;
// var P = 1;
// double delta = 0; 
// for (int i = 0; i < list.length - 1; i++){
//   S = S + list[i];
//   P = P * list[i];
// }
// delta = S / (list.length - 1); // в переменную delta заносится значение деления S(сумма всех элементов) на количество самих элементов массива

// print("Сумма равна: $S \nПроизведение равно: $P \nСреднее значение: $delta ");
// }



// Задание 3 УП1.1
// import 'dart:io';
// import 'dart:convert';

// void main() {
//   List<String> list = []; // ОбЪявляем массив
//  print("Введите элемент массива:");
//  int? a = int.parse(stdin.readLineSync()!);
//     var line;
//   line = stdin.readLineSync(encoding: utf8);
//   while (line != '') {
//   list.add(line);
//   line = stdin.readLineSync(encoding: utf8);
//   }

// var min = 999999; //важно чтоб начальное значение пременной min было больше значение элемента 
// var max = 0;
// var min_WORD;
// var max_WORD;

//   for (int i = 0; i < list.length; i++) {
//   if (list[i].length < min) {
//   min = list[i].length;
//   min_WORD = list[i];
//   }

//   if (list[i].length > max) {
//   max = list[i].length;
//   max_WORD = list[i];
//   }
// }

// print('Самый короткий элемент: $min_WORD');
// print('Самый длинный элемент: $max_WORD');
// }



// Задание 4 УП1.1

// import 'dart:io';
// import 'dart:math';

// void main() {
// List<int> list = []; // ОбЪявляем массив

// print("Введите нижнюю границу диапозона: ");
// int? a = int.parse(stdin.readLineSync()!); // читаем введенное с консоли число
// print("Введите верхнюю границу диапозона: ");
// int? b = int.parse(stdin.readLineSync()!); // читаем введенное с консоли число

// list_rand(a, b, list); // вызов пользовательской функции

// for (int k = 0; k < list.length; k++) {
// // вывод массива на экран
// var temp = list[k];
// stdout.write('$temp ');
// }
// }

// // пользовательская фунция для заполнения массива случайными числами
// // в диапозоне от x до y
// void list_rand(int x, int y, List LIST) {
// var n = y - x;
// var rng = Random(); // Переменная, в которой храится рандомное число
// for (var i = 0; i <= n; i++) {
// // Заполнение массива случайными числами
// LIST.add(x + rng.nextInt(y - x)); //в диапозоне от 0 до 100
// }
// }


// Задание 5

// import 'dart:io';
// import 'dart:convert';

// void main() {
// print('Введите строку:');
// String? line = stdin.readLineSync(encoding: utf8); // читаем строку с консоли

// String new_line = '';

// new_line = 'Start ';
// new_line += line.toString();
// new_line += ' End';

// print(new_line);
// }





























