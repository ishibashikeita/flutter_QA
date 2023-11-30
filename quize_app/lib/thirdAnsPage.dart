import 'package:flutter/material.dart';

class thirdAnsPage extends StatefulWidget {
  thirdAnsPage({super.key, required this.ans});
  String ans;

  @override
  State<thirdAnsPage> createState() => _thirdAnsPageState();
}

class _thirdAnsPageState extends State<thirdAnsPage> {
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
                          image: widget.ans == 'ハチミツ'
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
                      'ハチミツ',
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
                      'ハチミツは糖度が高く水分が少ないことから、細菌やバクテリアが繁殖しづらいため。ちなみに、スープもネギも細菌によって腐る。',
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
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => secondPage()),
                // );
              },
              child: Text('次の問題へ！'))
        ],
      ),
    );
  }
}
