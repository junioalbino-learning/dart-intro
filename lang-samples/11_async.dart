const oneSecond = Duration(seconds: 1);

Future<void> printWithDelay(String message) async {
  await Future.delayed(oneSecond);
  print(message);
}

// The method above is equivalent to:
// Future<void> printWithDelay(String message) {
//   return Future.delayed(oneSecond).then((_) {
//     print(message);
//   });
// }

