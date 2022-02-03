import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainScreenPage extends StatefulWidget {
  const MainScreenPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MainScreenPage> createState() => _MainScreenPage();
}

class _MainScreenPage extends State<MainScreenPage> {
  @override
  Widget build(BuildContext context) {
    final Size displaysize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFF224952),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[350],
        selectedItemColor: const Color(0xFF224952),
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
            title: const Text('',
                style: TextStyle(fontSize: 0.0, fontWeight: FontWeight.bold)),
            icon: Icon(Icons.home_rounded, size: displaysize.width * 0.08),
          ),
          BottomNavigationBarItem(
            title: const Text('', style: TextStyle(fontSize: 0.0)),
            icon: Icon(Icons.timeline_rounded, size: displaysize.width * 0.08),
          ),
          BottomNavigationBarItem(
            title: const Text('', style: TextStyle(fontSize: 0.0)),
            icon: Icon(Icons.notifications_outlined,
                size: displaysize.width * 0.08),
          ),
          BottomNavigationBarItem(
            title: const Text('', style: TextStyle(fontSize: 0.0)),
            icon:
                Icon(Icons.more_horiz_rounded, size: displaysize.width * 0.08),
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 70.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(child: _user()),
            Container(child: _cardSlider(context)),
            Container(
                margin: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: _menus(context)),
            Container(
                margin: const EdgeInsets.only(top: 25.0),
                child: _others(context)),
          ],
        ),
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
              margin: const EdgeInsets.only(left: 30.0),
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
              margin: const EdgeInsets.only(right: 30.0),
              child: const Icon(Icons.person, color: Colors.white, size: 30.0)),
        ],
      ),
    ],
  );
}

Widget _menus(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
              padding:
                  const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
              child: const Text('Send', style: TextStyle(color: Colors.white))),
          Container(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
              child: const Text('Send', style: TextStyle(color: Colors.white))),
        ],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
              padding:
                  const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
              child: const Text('Withdraw',
                  style: TextStyle(color: Colors.white))),
          Container(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
              child: const Text('Withdraw',
                  style: TextStyle(color: Colors.white))),
        ],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
              padding:
                  const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
              child:
                  const Text('Top Up', style: TextStyle(color: Colors.white))),
          Container(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
              child:
                  const Text('Top Up', style: TextStyle(color: Colors.white))),
        ],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
              padding:
                  const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
              child: const Text('More', style: TextStyle(color: Colors.white))),
          Container(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
              child: const Text('More', style: TextStyle(color: Colors.white))),
        ],
      ),
    ],
  );
}

Widget _others(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 325,
            padding: const EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
            decoration: BoxDecoration(
              color: Colors.grey[350],
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)), //모서리를 둥글게
            ),
          ),
        ],
      ),
    ],
  );
}

Widget _cardSlider(BuildContext context) {
  return CarouselSlider(
    options: CarouselOptions(height: 245.0), // 슬라이더 높이 설정
    items: [_oneCard(context), _twoCard(), _threeCard(), _plusCard()].map((i) {
      return Builder(
        builder: (BuildContext context) {
          // context 사용할 경우 활용 가능
          return Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: i,
          );
        },
      );
    }).toList(),
  );
}

Widget _oneCard(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Container(
          width: 295,
          height: 140,
          margin: const EdgeInsets.only(top: 20.0),
          decoration: const BoxDecoration(
            color: Color(0xFF05232B),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(5.0, 12.0), //(x,y)
                blurRadius: 10.0,
              ),
            ],
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20)), //모서리를 둥글게
          ),
          child: _oneCardDetails(context)),
      Container(
        width: 295,
        height: 55,
        margin: const EdgeInsets.only(bottom: 20.0),
        decoration: BoxDecoration(
          color: Colors.grey[350],
          boxShadow: [
            BoxShadow(
              color: Colors.grey[900]!,
              offset: const Offset(10.0, 10.0), //(x,y)
              blurRadius: 10.0,
            ),
          ],
          borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20)), //모서리를 둥글게
        ),
        child: _cardUnder(),
      ),
    ],
  );
}

Widget _oneCardDetails(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(child: _stars()),
      Container(
          margin: const EdgeInsets.only(top: 45.0, left: 18.0),
          child: _money1(context)),
    ],
  );
}

Widget _oneInfo() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
          margin: const EdgeInsets.only(top: 18.0, left: 18.0),
          child: Text(
            'PayBank',
            style: TextStyle(
                color: Colors.grey[350],
                // fontWeight: FontWeight.bold,
                fontSize: 16),
          )),
      Container(
          margin: const EdgeInsets.only(top: 8.0, left: 18.0),
          child: Text(
            '1234-12-1234567',
            style: TextStyle(
                color: Colors.grey[400],
                // fontWeight: FontWeight.bold,
                fontSize: 12),
          )),
    ],
  );
}

Widget _stars() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [Container(child: _oneInfo())],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
            margin: const EdgeInsets.only(top: 8.0, right: 16.0),
            child: IconButton(
              // 아래 두 줄의 코드가 IconButton의 의미없는 여백을 줄임
              padding: EdgeInsets.zero, // 패딩 설정
              constraints: const BoxConstraints(), // constraints
              icon: const Icon(Icons.check_rounded),
              color: Colors.grey[350],
              iconSize: 28.0,
              onPressed: () {},
            ),
          ),
        ],
      ),
    ],
  );
}

Widget _money1(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Text(
            '87,960 원',
            style: TextStyle(
                color: Colors.grey[350],
                fontWeight: FontWeight.bold,
                fontSize: 18),
          )
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
          IconButton(
            // 아래 두 줄의 코드가 IconButton의 의미없는 여백을 줄임
            padding: EdgeInsets.zero, // 패딩 설정
            constraints: const BoxConstraints(), // constraints
            icon: const Icon(Icons.arrow_forward_ios_rounded),
            color: Colors.grey[350],
            iconSize: 18.0,
            onPressed: () {},
          ),
        ],
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
              width: 55,
              height: 40,
              margin: const EdgeInsets.only(left: 15.0),
              child: Image.asset("img/master_card.png")),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)) //모서리를 둥글게
                ),
            child: PopupMenuButton(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                ),
                color: Colors.grey[350],
                // add icon, by default "3 dot" icon
                icon: const Icon(Icons.more_vert_rounded),
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem<int>(
                      value: 0,
                      child: Text("계좌 관리"),
                    ),
                    const PopupMenuItem<int>(
                      value: 1,
                      child: Text("카드 관리"),
                    ),
                  ];
                },
                onSelected: (value) {}),
          ),
        ],
      ),
    ],
  );
}

Widget _twoCard() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Container(
          width: 295,
          height: 140,
          margin: const EdgeInsets.only(top: 20.0),
          decoration: const BoxDecoration(
              color: Color(0xFF123740),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(5.0, 12.0), //(x,y)
                  blurRadius: 10.0,
                ),
              ],
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20)) //모서리를 둥글게
              ),
          child: _twoCardDetails()),
      Container(
        width: 295,
        height: 55,
        margin: const EdgeInsets.only(bottom: 20.0),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey[900]!,
                offset: const Offset(10.0, 10.0), //(x,y)
                blurRadius: 10.0,
              ),
            ],
            color: Colors.grey[350],
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20)) //모서리를 둥글게
            ),
        child: _cardUnder(),
      ),
    ],
  );
}

Widget _twoCardDetails() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
          margin: const EdgeInsets.only(top: 18.0, left: 18.0),
          child: Text(
            'BankTwo',
            style: TextStyle(
                color: Colors.grey[350],
                // fontWeight: FontWeight.bold,
                fontSize: 16),
          )),
      Container(
          margin: const EdgeInsets.only(top: 8.0, left: 18.0),
          child: Text(
            '123-123456-12345',
            style: TextStyle(
                color: Colors.grey[400],
                // fontWeight: FontWeight.bold,
                fontSize: 12),
          )),
      Container(
          margin: const EdgeInsets.only(top: 45.0, left: 18.0),
          child: _money2()),
    ],
  );
}

Widget _money2() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Text(
            '23,850 원',
            style: TextStyle(
                color: Colors.grey[350],
                fontWeight: FontWeight.bold,
                fontSize: 18),
          )
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
          IconButton(
            // 아래 두 줄의 코드가 IconButton의 의미없는 여백을 줄임
            padding: EdgeInsets.zero, // 패딩 설정
            constraints: const BoxConstraints(), // constraints
            icon: const Icon(Icons.arrow_forward_ios_rounded),
            color: Colors.grey[350],
            iconSize: 18.0,
            onPressed: () {},
          ),
        ],
      ),
    ],
  );
}

Widget _threeCard() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Container(
          width: 295,
          height: 140,
          margin: const EdgeInsets.only(top: 20.0),
          decoration: const BoxDecoration(
            color: Color(0xFF05232B),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(5.0, 12.0), //(x,y)
                blurRadius: 10.0,
              ),
            ],
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20)), //모서리를 둥글게
          ),
          child: _threeCardDetails()),
      Container(
        width: 295,
        height: 55,
        margin: const EdgeInsets.only(bottom: 20.0),
        decoration: BoxDecoration(
          color: Colors.grey[350],
          boxShadow: [
            BoxShadow(
              color: Colors.grey[900]!,
              offset: const Offset(10.0, 10.0), //(x,y)
              blurRadius: 10.0,
            ),
          ],
          borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20)), //모서리를 둥글게
        ),
        child: _cardUnder(),
      ),
    ],
  );
}

Widget _threeCardDetails() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
          margin: const EdgeInsets.only(top: 18.0, left: 18.0),
          child: Text(
            'BankThree',
            style: TextStyle(
                color: Colors.grey[350],
                // fontWeight: FontWeight.bold,
                fontSize: 16),
          )),
      Container(
          margin: const EdgeInsets.only(top: 8.0, left: 18.0),
          child: Text(
            '4321-21-7654321',
            style: TextStyle(
                color: Colors.grey[400],
                // fontWeight: FontWeight.bold,
                fontSize: 12),
          )),
      Container(
          margin: const EdgeInsets.only(top: 45.0, left: 18.0),
          child: _money3()),
    ],
  );
}

Widget _money3() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Text(
            '324,540 원',
            style: TextStyle(
                color: Colors.grey[350],
                fontWeight: FontWeight.bold,
                fontSize: 18),
          )
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
          IconButton(
            // 아래 두 줄의 코드가 IconButton의 의미없는 여백을 줄임
            padding: EdgeInsets.zero, // 패딩 설정
            constraints: const BoxConstraints(), // constraints
            icon: const Icon(Icons.arrow_forward_ios_rounded),
            color: Colors.grey[350],
            iconSize: 18.0,
            onPressed: () {},
          ),
        ],
      ),
    ],
  );
}

Widget _plusCard() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Container(
        width: 295,
        height: 195,
        margin: const EdgeInsets.only(top: 20.0),
        decoration: BoxDecoration(
            color: Colors.grey[350],
            borderRadius: const BorderRadius.all(Radius.circular(20)) //모서리를 둥글게
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_rounded),
              color: const Color(0xFF123740),
              iconSize: 60.0,
              onPressed: () {},
            ),
          ],
        ),
      ),
    ],
  );
}
