import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "RiverPod App",
      home: MyPage(),
    );
  }
}

final Tex = StateProvider<String>((ref) {
  return "Bhuvan";
});

// class MyPage extends ConsumerWidget {
//   const MyPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, ScopedReader watch) {
//     final value = watch(count);
//     return Scaffold(
//       body: Center(
//         child: Text(value),
//       ),
//     );
//   }
// }

class MyPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final val = ref.watch(Tex);

    return Scaffold(
      body: Text(val),
    );
  }
}
