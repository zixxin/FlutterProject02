import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'project02',
      theme: ThemeData(),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final Size displaysize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFF224952),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF123740),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: 0, //현재 선택된 Index
        onTap: (int index) {
          // setState(() {
          //   _selectedIndex = index;
          // });
        },
        items: [
          BottomNavigationBarItem(
            title: const Text('Home',
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold)),
            icon: Icon(Icons.home_rounded, size: displaysize.width * 0.08),
          ),
          BottomNavigationBarItem(
            title: const Text('Activity', style: TextStyle(fontSize: 12.0)),
            icon: Icon(Icons.timeline_rounded, size: displaysize.width * 0.08),
          ),
          BottomNavigationBarItem(
            title: const Text('Notification', style: TextStyle(fontSize: 12.0)),
            icon: Icon(Icons.notifications_outlined,
                size: displaysize.width * 0.08),
          ),
          BottomNavigationBarItem(
            title: const Text('More', style: TextStyle(fontSize: 12.0)),
            icon:
                Icon(Icons.more_horiz_rounded, size: displaysize.width * 0.08),
          ),
        ],
      ),
      body: ListView(
        // ListView : 스크롤 가능 (children)
        padding: const EdgeInsets.only(
            // , left: 30.0, right: 30.0
            top: 70.0,
            bottom: 20.0),
        children: <Widget>[_user(), _cardscroller()],
      ),
    );
  }
}

Widget _userText() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
              margin: const EdgeInsets.only(left: 40.0),
              child: const Text(
                '지인이',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
        ],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(width: 13),
        ],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
            alignment: Alignment.center,
            height: 20,
            width: 50,
            child: Text(
              '닉네임',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[400], fontSize: 13),
            ),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius:
                  const BorderRadius.all(Radius.circular(10.0) // POINT
                      ),
            ),
          ),
        ],
      ),
    ],
  );
}

Widget _user() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [_userText()],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
              margin: const EdgeInsets.only(right: 40.0),
              child: const Icon(Icons.person, color: Colors.white, size: 30.0)),
        ],
      ),
    ],
  );
}

Widget _menus() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    // Row에서는 mainAxis가 가로, crossAxis가 세로
    // Column에서는 crossAxis가 가로, mainAxis가 세로
    children: <Widget>[
      Container(
          width: 80,
          height: 285,
          decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15)) //모서리를 둥글게
              ),
          child: Container(
              padding: const EdgeInsets.only(top: 7.0), child: _menudetails())),
    ],
  );
}

Widget _menudetails() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            // Row에서는 mainAxis가 가로, crossAxis가 세로
            // Column에서는 crossAxis가 가로, mainAxis가 세로
            children: [
              IconButton(
                icon: const Icon(Icons.attach_money_rounded),
                color: const Color(0xFF123740),
                iconSize: 30.0,
                onPressed: () {},
              ),
              const Text('입금',
                  style: TextStyle(
                      color: Color(0xFF123740), fontWeight: FontWeight.bold))
            ],
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            // Row에서는 mainAxis가 가로, crossAxis가 세로
            // Column에서는 crossAxis가 가로, mainAxis가 세로
            children: [
              IconButton(
                icon: const Icon(Icons.attach_money_rounded),
                color: const Color(0xFF123740),
                iconSize: 30.0,
                onPressed: () {},
              ),
              const Text('출금',
                  style: TextStyle(
                      color: Color(0xFF123740), fontWeight: FontWeight.bold))
            ],
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            // Row에서는 mainAxis가 가로, crossAxis가 세로
            // Column에서는 crossAxis가 가로, mainAxis가 세로
            children: [
              IconButton(
                icon: const Icon(Icons.attach_money_rounded),
                color: const Color(0xFF123740),
                iconSize: 30.0,
                onPressed: () {},
              ),
              const Text('이체',
                  style: TextStyle(
                      color: Color(0xFF123740), fontWeight: FontWeight.bold))
            ],
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            // Row에서는 mainAxis가 가로, crossAxis가 세로
            // Column에서는 crossAxis가 가로, mainAxis가 세로
            children: [
              IconButton(
                icon: const Icon(Icons.grid_view_rounded),
                color: const Color(0xFF123740),
                iconSize: 30.0,
                onPressed: () {},
              ),
              const Text('더보기',
                  style: TextStyle(
                      color: Color(0xFF123740), fontWeight: FontWeight.bold))
            ],
          ),
        ],
      ),
    ],
  );
}

// card 나열을 위한 가로 스크롤
Widget _cardscroller() {
  return Column(
    // mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    // Row에서는 mainAxis가 가로, crossAxis가 세로
    // Column에서는 crossAxis가 가로, mainAxis가 세로
    children: <Widget>[
      SizedBox(
        height: 330, // fixed height
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          // ListView : 스크롤 가능 (children)
          children: <Widget>[_cardLine()],
        ),
      ),
    ],
  );
}

Widget _cardLine() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
            width: 80,
            height: 285,
            margin: const EdgeInsets.only(top: 25.0),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25)) //모서리를 둥글게
                ),
            child: Container(child: _menus()),
          )
        ],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [Container(width: 30)],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [_card()],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [Container(width: 25)],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [_card()],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [Container(width: 25)],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [_card()],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [Container(width: 25)],
      ),
    ],
  );
}

Widget _card() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    // Row에서는 mainAxis가 가로, crossAxis가 세로
    // Column에서는 crossAxis가 가로, mainAxis가 세로
    children: <Widget>[
      Container(
        width: 200,
        height: 225,
        margin: const EdgeInsets.only(top: 25.0),
        decoration: const BoxDecoration(
            color: Color(0xFF05232B),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25)) //모서리를 둥글게
            ),
        child: Container(child: _money()),
      ),
      Container(
        width: 200,
        height: 60,
        margin: const EdgeInsets.only(bottom: 20.0),
        decoration: BoxDecoration(
            color: Colors.grey[350],
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25)) //모서리를 둥글게
            ),
        child: _cardUnder(),
      ),
    ],
  );
}

Widget _cardUnder() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
              width: 60,
              height: 40,
              margin: const EdgeInsets.only(left: 12.0),
              child: Image.asset("img/master_card.png")),
        ],
      ),
    ],
  );
}

Widget _money() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
              margin: const EdgeInsets.only(top: 185.0, left: 18.0),
              child: Text(
                '87,960 원',
                style: TextStyle(
                    color: Colors.grey[350],
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )),
        ],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(width: 5),
        ],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
              margin: const EdgeInsets.only(top: 187.0),
              child: IconButton(
                // 아래 두 줄의 코드가 IconButton의 의미없는 여백을 줄임
                padding: EdgeInsets.zero, // 패딩 설정
                constraints: const BoxConstraints(), // constraints
                icon: const Icon(Icons.arrow_forward_ios_rounded),
                color: Colors.grey[350],
                iconSize: 18.0,
                onPressed: () {},
              )),
        ],
      ),
    ],
  );
}
