import 'package:flutter/material.dart';
import 'package:quize_app/firstAnsPage.dart';
import 'package:fluttertoast/fluttertoast.dart';

class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
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
                  '第一問：せんべいやスナック菓子の「サラダ味」とは、何の味のこと？',
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
            title: Text('1、サラダ油味'),
            value: 'サラダ油味',
            groupValue: _gValue,
            onChanged: (value) => _onRadioSelected(value),
          ),
          RadioListTile(
            title: Text('2、サラッとした味'),
            value: 'サラッとした味',
            groupValue: _gValue,
            onChanged: (value) => _onRadioSelected(value),
          ),
          RadioListTile(
            title: Text('３、グリーンサラダ味'),
            value: 'グリーンサラダ味',
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
                        builder: (context) => firstAnsPage(
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
