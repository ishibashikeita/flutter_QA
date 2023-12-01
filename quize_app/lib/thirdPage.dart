import 'package:flutter/material.dart';
import 'package:quize_app/firstAnsPage.dart';
import 'package:quize_app/secondAnsPage%20.dart';
import 'package:quize_app/thirdAnsPage.dart';
import 'package:fluttertoast/fluttertoast.dart';

class thirdPage extends StatefulWidget {
  thirdPage({super.key});

  @override
  State<thirdPage> createState() => _thirdPageState();
}

class _thirdPageState extends State<thirdPage> {
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
                  '第三問：次のうち腐らないものは？',
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
            title: Text('1、ネギ'),
            value: 'ネギ',
            groupValue: _gValue,
            onChanged: (value) => _onRadioSelected(value),
          ),
          RadioListTile(
            title: Text('2、コンソメスープ'),
            value: 'コンソメスープ',
            groupValue: _gValue,
            onChanged: (value) => _onRadioSelected(value),
          ),
          RadioListTile(
            title: Text('３、ハチミツ'),
            value: 'ハチミツ',
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
                        builder: (context) => thirdAnsPage(
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
