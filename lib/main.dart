import 'package:flutter/material.dart';
import 'package:page_a.dart';
import 'package:banana/part11/page_b.dart';
import 'package:banana/part11/page_c.dart';
import 'package:go_router/go_router.dart';

main() {
  final app = App();
  runApp(app);
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final router = GoRouter(
    initialLocation: '/a',
    routes: [
      GoRoute(
        path: '/a',
        builder: (context, state) => PageA(),
      ),
      GoRoute(
        path: '/b',
        builder: (context, State) => PageB(),
      ),
      GoRoute(
        path: '/c',
        builder: (context, state) => PageC(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
// import 'package:flutter/material.dart';
// // import 'package:tutorial/counter.dart';
// // import 'package:flutter_riverpod/flutter_riverpod.dart';

// class Tweet {
//   final String userName;
//   final String iconUrl;
//   final String text;
//   final String createdAt;

//   Tweet(this.userName, this.iconUrl, this.text, this.createdAt);
// }

// final models = [
//   Tweet('ルフィ', 'icon1.png', '海賊王におれはなる！', '2022/1/1'),
//   Tweet('ゾロ', 'icon2.png', 'おれはもう！二度と敗けねェから！', '2022/1/2'),
//   Tweet('ナミ', 'icon3.png', 'もう背中向けられないじゃないっ！', '2022/1/3'),
//   Tweet('ウソップ', 'icon4.png', 'お前らの”伝説のヒーロー”になってやる！', '2022/1/4'),
//   Tweet('サンジ', 'icon5.png', 'たとえ死んでもおれは女は蹴らん・・・！', '2022/1/5'),
//   Tweet('チョッパー', 'icon6.png', '人間ならもっと自由だ！', '2022/1/6'),
//   Tweet('ビビ', 'icon7.png', 'もう一度仲間と呼んでくれますか!?', '2022/1/7'),
//   Tweet('ロビン', 'icon8.png', '生ぎたいっ！', '2022/1/8'),
//   Tweet('フランキー', 'icon9.png', '存在することは罪にはならねェ！', '2022/1/9'),
//   Tweet('ブルック', 'icon10.png', '男が一度・・・必ず帰ると言ったのだから！', '2022/1/10'),
//   Tweet('ジンベイ', 'icon11.png', '失ったものばかり数えるな！', '2022/1/11'),
//   Tweet('シャンクス', 'icon1.png', 'この帽子をお前に預ける', '2022/2/1'),
//   Tweet('ヒルルク', 'icon2.png', '違う!…人に忘れられた時さ…!', '2022/2/2'),
//   Tweet('ドクタークレハ', 'icon3.png', '優しいだけじゃ人は救えないんだ!', '2022/2/3'),
//   Tweet('ティーチ', 'icon4.png', '人の夢は!終わらねェ!', '2022/2/4'),
//   Tweet('ガンフォール', 'icon5.png', '人の生きるこの世界に“神”などおらぬ!', '2022/2/5'),
//   Tweet('ボンクレー', 'icon6.png', '理由なんざ他にゃいらねェ!', '2022/2/6'),
//   Tweet('イワンコフ', 'icon7.png', '“奇跡”ナメるんじゃないよォ!', '2022/2/7'),
//   Tweet('ニューゲート', 'icon8.png', 'バカな息子をそれでも愛そう・・・', '2022/1/8'),
//   Tweet('エース', 'icon9.png', '愛してくれて・・・ありがとう', '2022/2/9'),
//   Tweet('ロー', 'icon10.png', '取るべきイスは…必ず奪う!', '2022/2/10'),
//   Tweet('サボ', 'icon11.png', '以後ルフィのバックにはおれがついてる!', '2022/2/11'),
//   Tweet('バルトロメオ', 'icon1.png', 'この子分盃!勝手に頂戴いたしますだべ!', '2022/3/1'),
// ];

// Widget modelToWidget(Tweet model) {
//   final icon = Container(
//     margin: const EdgeInsets.all(20),
//     width: 60,
//     height: 60,
//     child: ClipRRect(
//       borderRadius: BorderRadius.circular(30.0),
//       child: Image.asset("images/${model.iconUrl}"),
//     ),
//   );

//   // 名前と時間
//   final metaText = Container(
//     padding: const EdgeInsets.all(6),
//     height: 40,
//     alignment: Alignment.centerLeft,
//     child: Text(
//       '${model.userName}    ${model.createdAt}',
//       style: const TextStyle(color: Colors.grey),
//     ),
//   );

//   // 本文
//   final text = Container(
//     padding: const EdgeInsets.all(8),
//     alignment: Alignment.centerLeft,
//     child: Text(
//       model.text,
//       style: const TextStyle(fontWeight: FontWeight.bold),
//     ),
//   );

//   // 部品を並べる
//   return Container(
//     padding: const EdgeInsets.all(1),
//     decoration: BoxDecoration(
//       // 全体を青い枠線で囲む
//       border: Border.all(color: Colors.blue),
//       color: Colors.white,
//     ),
//     width: double.infinity,
//     // 高さ
//     height: 120,
//     child: Row(
//       children: [
//         // アイコン
//         icon,
//         Expanded(
//           child: Column(
//             children: [
//               // 名前と時間
//               metaText,
//               // 本文
//               text,
//             ],
//           ),
//         ),
//       ],
//     ),
//   );
// }

// void main() {
//   final list = ListView.builder(
//     itemCount: models.length,
//     itemBuilder: (c, i) => modelToWidget(models[i]),
//   );

//   final con = Center(
//     child: SizedBox(
//       height: 400,
//       child: list,
//     ),
//   );

//   final sca = Scaffold(
//     backgroundColor: Colors.grey,
//     body: con,
//   );

//   final app = MaterialApp(home: sca);
//   runApp(app);
// }

// void main() {
//   const app = MaterialApp(home: Sample());
//   const scope = ProviderScope(child: app);
//   runApp(scope);
  // final controller = TextEditingController();

  // final textField = TextField(
  //   controller: controller,
  //   decoration: InputDecoration(
  //       border: OutlineInputBorder(),
  //       labelText: 'Input Text.',
  //       hintText: 'Only English',
  //       errorText: 'This Text is not English!'),
  // );

  // showText() {
  //   debugPrint(controller.text);
  // }

  // final button = ElevatedButton(
  //   onPressed: showText,
  //   child: Text('press button'),
  //   style: ElevatedButton.styleFrom(primary: Colors.blue),
  // );

  // final img = Image.asset('images/sample.png');
  // final col = Column(
  //   mainAxisAlignment: MainAxisAlignment.center,
  //   crossAxisAlignment: CrossAxisAlignment.center,
  //   children: [
  //     Image.asset('images/sample.png'),
  //     Image.network('https://flutter-image-network.web.app/inu.jpeg'),
  //     //Text('レモン'),
  //     //Text('りんご'),
  //     //Text('ブドウ'),
  //   ],
  // );

  // final con2 = Container(
  //   color: Colors.yellowAccent,
  //   width: 10,
  //   height: 10,
  // );

  // final con = Container(
  //   color: Colors.indigo,
  //   width: 700,
  //   height: 500,
  //   child: img,
  //   alignment: Alignment.topRight,
  //   padding: EdgeInsets.all(20),
  // );

  // final c = Counter(
  //   number: 888,
  // );

  // // final row = Row(
  // //   mainAxisAlignment: MainAxisAlignment.center,
  // //   crossAxisAlignment: CrossAxisAlignment.center,
  // //   children: [img, img, img],
  // // );

  // final app = MaterialApp(
  //   // 画面
  //   home: Scaffold(
  //     // 真ん中
  //     body: Center(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //         children: [
  //           Container(
  //             width: 300,
  //             child: textField,
  //           ),
  //           button,
  //         ],
  //       ),
  //     ),
  //   ),
  // );
  // runApp(app);
// }

// final nicknameProvider = StateProvider<String>((ref) {
//   return "ルビードッグ";
// });

// class Sample extends ConsumerWidget {
//   const Sample({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final nickname = ref.watch(nicknameProvider);

//     return Scaffold(
//         appBar: AppBar(title: Text(nickname)),
//         body: SizedBox(
//           width: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(nickname),
//               ElevatedButton(
//                   onPressed: () => tapA(ref), child: const Text('A')),
//               ElevatedButton(
//                   onPressed: () => tapB(ref), child: const Text('B')),
//               ElevatedButton(
//                   onPressed: () => tapC(ref), child: const Text('C')),
//               Text(nickname),
//             ],
//           ),
//         ));
//   }

//   tapA(WidgetRef ref) {
//     final notifier = ref.read(nicknameProvider.notifier);

//     notifier.state = 'ルビーキャット';
//   }

//   tapB(WidgetRef ref) {
//     final notifier = ref.read(nicknameProvider.notifier);
//     notifier.state = 'ルビーバード';
//   }

//   tapC(WidgetRef ref) {
//     final notifier = ref.read(nicknameProvider.notifier);
//     notifier.state = 'ルビーフィッシュ';
//   }
// }
