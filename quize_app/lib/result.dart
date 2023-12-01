import 'package:flutter/material.dart';
import 'package:quize_app/const/const.dart';
import 'package:quize_app/main.dart';

class resultPage extends StatefulWidget {
  const resultPage({super.key});

  @override
  State<resultPage> createState() => _resultPageState();
}

class _resultPageState extends State<resultPage> {
  int sum = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    result.forEach(
      (key, value) {
        if (value == true) {
          sum++;
        }
      },
    );
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Kadai07_IH13B_04'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                width: size.width * 0.8,
                height: size.height * 0.2,
                color: Colors.black.withOpacity(0.1),
                child: Center(
                  child: Text(
                    '正解数:' + sum.toString() + '/3問',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                width: size.width * 0.8,
                height: size.height * 0.4,
                child: ListView.builder(
                    itemCount: result.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: size.width * 0.7,
                          height: size.height * 0.1,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color: Colors.black.withOpacity(0.5)),
                            ),
                          ),
                          child: Center(
                            child: (result.values.elementAt(index) == true)
                                ? Text(
                                    (index + 1).toString() + '問目:正解!',
                                    style: TextStyle(fontSize: 40),
                                  )
                                : Text(
                                    (index + 1).toString() + '問目:不正解!',
                                    style: TextStyle(fontSize: 40),
                                  ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                width: size.width * 0.5,
                height: size.height * 0.1,
                child: ElevatedButton(
                    onPressed: () {
                      result = {
                        'first': false,
                        'second': false,
                        'third': false,
                      };
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp()),
                      );
                    },
                    child: Text(
                      'タイトルへ戻る',
                      style: TextStyle(fontSize: 20),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
