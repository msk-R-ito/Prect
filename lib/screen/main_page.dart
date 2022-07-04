import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    double screenHigh = MediaQuery.of(context).size.height;
    List<Widget> connectDevices = [];

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 48, left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                margin: const EdgeInsets.only(top: 16),
                child: SizedBox(
                  width: double.infinity,
                  height: screenHigh/4,
                  child: Center(
                    child: Text('ここにグラフ'),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Row(
                  children: [
                    const Text('デバイス情報', style: TextStyle(fontSize: 20),),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        // 画面を接続ページに遷移させる
                      },
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              connectDevices.isNotEmpty
                  ? ListView.builder(
                itemCount: connectDevices.length,
                itemBuilder: (context, index) {
                  return connectDevices[index];
                },
              ) : const Text('接続されたデバイスが存在しません'),
            ],
          ),
        ),
      )
    );
  }
}