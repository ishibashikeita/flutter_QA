import 'package:flutter/material.dart';
import 'package:quize_app/const/const.dart';
import 'package:quize_app/thirdPage.dart';

class secondAnsPage extends StatefulWidget {
  secondAnsPage({super.key, required this.ans});
  String ans;

  @override
  State<secondAnsPage> createState() => _secondAnsPageState();
}

class _secondAnsPageState extends State<secondAnsPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Kadai07_IH13B_04'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: size.width,
                height: size.height * 0.6,
                color: Colors.black.withOpacity(0.1),
                child: Column(
                  children: [
                    Text(
                      '【あなたの回答】',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      widget.ans,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Container(
                      width: size.height * 0.2,
                      height: size.height * 0.2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: widget.ans == '汚物に触れないようにすること'
                              ? NetworkImage(
                                  'https://4.bp.blogspot.com/-CUR5NlGuXkU/UsZuCrI78dI/AAAAAAAAc20/mMqQPb9bBI0/s800/mark_maru.png')
                              : NetworkImage(
                                  'https://1.bp.blogspot.com/-eJGNGE4u8LA/UsZuCAMuehI/AAAAAAAAc2c/QQ5eBSC2Ey0/s800/mark_batsu.png'),
                        ),
                      ),
                    ),
                    Text(
                      '【正解】',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      '汚物に触れないようにすること',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      '【解説】',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      '17世紀にはトイレ問題が深刻となり汚物が路上にあふれ出していたため、接地面積を減らす目的でハイヒールが生まれた。（諸説あり）',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          ElevatedButton(
              onPressed: () {
                if (widget.ans == '汚物に触れないようにすること') {
                  result['second'] = true;
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => thirdPage()),
                );
              },
              child: Text('次の問題へ！'))
        ],
      ),
    );
  }
}
