import 'package:flutter/material.dart';
import 'package:quize_app/const/const.dart';
import 'package:quize_app/secondPage.dart';

class firstAnsPage extends StatefulWidget {
  firstAnsPage({super.key, required this.ans});
  String ans;

  @override
  State<firstAnsPage> createState() => _firstAnsPageState();
}

class _firstAnsPageState extends State<firstAnsPage> {
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
                          image: widget.ans == 'サラダ油味'
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
                      'サラダ油味',
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
                      'サラダの味ではない。サラダ油を使って作った菓子をサラダ味としている。',
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
                if (widget.ans == 'サラダ油味') {
                  result['first'] = true;
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => secondPage()),
                );
              },
              child: Text('次の問題へ！'))
        ],
      ),
    );
  }
}
