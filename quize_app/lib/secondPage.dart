import 'package:flutter/material.dart';
import 'package:quize_app/firstAnsPage.dart';
import 'package:quize_app/secondAnsPage%20.dart';
import 'package:fluttertoast/fluttertoast.dart';

class secondPage extends StatefulWidget {
  const secondPage({super.key});

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  String _gValue = '';

  _onRadioSelected(value) {
    setState(() {
      _gValue = value;
    });
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
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: size.width,
              height: size.height * 0.3,
              color: Colors.black.withOpacity(0.1),
              child: Center(
                child: Text(
                  '第二問：ハイヒールが生まれた当初の目的は？',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          RadioListTile(
            title: Text('正解を選択してください。'),
            value: '',
            groupValue: _gValue,
            onChanged: (value) => _onRadioSelected(value),
          ),
          RadioListTile(
            title: Text('1、ステップを踏んで音を出すこと'),
            value: 'ステップを踏んで音を出すこと',
            groupValue: _gValue,
            onChanged: (value) => _onRadioSelected(value),
          ),
          RadioListTile(
            title: Text('2、汚物に触れないようにすること'),
            value: '汚物に触れないようにすること',
            groupValue: _gValue,
            onChanged: (value) => _onRadioSelected(value),
          ),
          RadioListTile(
            title: Text('３、脚を細く見せること'),
            value: '脚を細く見せること',
            groupValue: _gValue,
            onChanged: (value) => _onRadioSelected(value),
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          ElevatedButton(
              onPressed: () {
                if (_gValue != '') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => secondAnsPage(
                              ans: _gValue,
                            )),
                  );
                } else {
                  Fluttertoast.showToast(
                    msg: '回答を選択してください。',
                    fontSize: 18,
                  );
                }
              },
              child: Text('決定！'))
        ],
      ),
    );
  }
}
