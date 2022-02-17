import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainScreenPage extends StatefulWidget {
  const MainScreenPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MainScreenPage> createState() => _MainScreenPage();
}

class _MainScreenPage extends State<MainScreenPage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size displaysize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      //If you want to show body behind the navbar, it should be true
      extendBody: true,
      backgroundColor: const Color(0xFF030404),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[400],
        selectedItemColor: const Color(0xFF030404),
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
            icon: Icon(Icons.qr_code_scanner_rounded,
                size: displaysize.width * 0.08),
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
      body: ListView(
        controller: _scrollController,
        // width: MediaQuery.of(context).size.width,
        // padding: const EdgeInsets.only(top: 70.0),
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(margin: const EdgeInsets.only(top: 10.0), child: _user()),
          Container(child: _cardSlider(context)),
          Container(
              margin: const EdgeInsets.only(bottom: 10.0), child: _sendMoney()),
          Container(margin: const EdgeInsets.only(top: 10.0), child: _people()),
          Container(
              margin: const EdgeInsets.only(top: 25.0),
              child: _others(context)),
        ],
      ),
    );
    // );
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
              child: Text(
                '지인이',
                style: TextStyle(
                    color: Colors.grey[350],
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
              style: TextStyle(color: Colors.grey[350], fontSize: 13),
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
              child: Icon(Icons.person, color: Colors.grey[350], size: 30.0)),
        ],
      ),
    ],
  );
}

Widget _sendMoney() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
              margin: const EdgeInsets.only(left: 25.0, top: 5.0),
              child: Text(
                'Quick Send',
                style: TextStyle(
                    color: Colors.grey[350],
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              )),
        ],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
              margin: const EdgeInsets.only(top: 7.0), child: _moreText()),
        ],
      ),
    ],
  );
}

Widget _moreText() {
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
              margin: const EdgeInsets.only(right: 3.0),
              child: Text(
                '더보기',
                style: TextStyle(
                    color: Colors.grey[350],
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              )),
        ],
      ),
      Column(
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
              margin: const EdgeInsets.only(right: 25.0),
              child: IconButton(
                // 아래 두 줄의 코드가 IconButton의 의미없는 여백을 줄임
                padding: EdgeInsets.zero, // 패딩 설정
                constraints: const BoxConstraints(), // constraints
                icon: const Icon(Icons.arrow_forward_ios_rounded),
                color: Colors.grey[350],
                iconSize: 15.0,
                onPressed: () {},
              )),
        ],
      ),
    ],
  );
}

Widget _people() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
            margin: const EdgeInsets.only(left: 25.0),
            width: 55,
            height: 55,
            decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius:
                    const BorderRadius.all(Radius.circular(100)) //모서리를 둥글게
                ),
            child: const Icon(Icons.add_rounded, size: 27.0),
          ),
          Container(
              margin: const EdgeInsets.only(top: 10.0, left: 25.0),
              child: Text('추가하기',
                  style: TextStyle(color: Colors.grey[350], fontSize: 13)))
        ],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius:
                    const BorderRadius.all(Radius.circular(100)) //모서리를 둥글게
                ),
            child: const Icon(Icons.person_rounded, size: 30.0),
          ),
          Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: Text('친구 1',
                  style: TextStyle(color: Colors.grey[350], fontSize: 13)))
        ],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius:
                    const BorderRadius.all(Radius.circular(100)) //모서리를 둥글게
                ),
            child: const Icon(Icons.person_rounded, size: 30.0),
          ),
          Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: Text('친구 2',
                  style: TextStyle(color: Colors.grey[350], fontSize: 13)))
        ],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius:
                    const BorderRadius.all(Radius.circular(100)) //모서리를 둥글게
                ),
            child: const Icon(Icons.person_rounded, size: 30.0),
          ),
          Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: Text('친구 3',
                  style: TextStyle(color: Colors.grey[350], fontSize: 13)))
        ],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
            margin: const EdgeInsets.only(right: 25.0),
            width: 55,
            height: 55,
            decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius:
                    const BorderRadius.all(Radius.circular(100)) //모서리를 둥글게
                ),
            child: const Icon(Icons.person_rounded, size: 30.0),
          ),
          Container(
              margin: const EdgeInsets.only(top: 10.0, right: 25.0),
              child: Text('친구 4',
                  style: TextStyle(color: Colors.grey[350], fontSize: 13)))
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
              height: 610,
              padding:
                  const EdgeInsets.only(top: 25.0, left: 27.0, right: 27.0),
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(33),
                    topRight: Radius.circular(33)), //모서리를 둥글게
              ),
              child: _details()),
        ],
      ),
    ],
  );
}

Widget _details() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Container(
          margin: const EdgeInsets.only(bottom: 27.0), child: _detailsTitle()),
      Container(
          margin: const EdgeInsets.only(bottom: 23.0),
          child: _detailsPeople1()),
      Container(
          margin: const EdgeInsets.only(bottom: 23.0),
          child: _detailsPeople2()),
      Container(
          margin: const EdgeInsets.only(bottom: 23.0),
          child: _detailsPeople3()),
      Container(
          margin: const EdgeInsets.only(bottom: 23.0),
          child: _detailsPeople4()),
      Container(
          margin: const EdgeInsets.only(bottom: 23.0),
          child: _detailsPeople5()),
      Container(
          margin: const EdgeInsets.only(bottom: 23.0),
          child: _detailsPeople3()),
      Container(
          margin: const EdgeInsets.only(bottom: 23.0),
          child: _detailsPeople4()),
      Container(
          margin: const EdgeInsets.only(bottom: 23.0),
          child: _detailsPeople5()),
    ],
  );
}

Widget _detailsTitle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: const [
          Text('Last Transactions',
              style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold)),
        ],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          IconButton(
            // 아래 두 줄의 코드가 IconButton의 의미없는 여백을 줄임
            padding: EdgeInsets.zero, // 패딩 설정
            constraints: const BoxConstraints(), // constraints
            icon: const Icon(Icons.arrow_forward_ios_rounded),
            iconSize: 20.0,
            onPressed: () {},
          ),
        ],
      ),
    ],
  );
}

Widget _detailsPeople1() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [_icon1()],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          const Text('-24,800원',
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
          Container(height: 7),
          Text('324,540원', style: TextStyle(color: Colors.grey[600])),
        ],
      ),
    ],
  );
}

Widget _icon1() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
              margin: const EdgeInsets.only(right: 20.0),
              child: Image.asset("img/money.png", width: 25, height: 25)),
        ],
      ),
      Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          // Row에서는 mainAxis가 가로, crossAxis가 세로
          // Column에서는 crossAxis가 가로, mainAxis가 세로
          children: [
            const Text('(주)카카오선물하기',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
            Container(height: 7),
            Text('Friday, 4 Feb', style: TextStyle(color: Colors.grey[600])),
          ]),
    ],
  );
}

Widget _detailsPeople2() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [_icon2()],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          const Text('+ 100,000 원',
              style: TextStyle(
                  color: Color(0xFFB46834),
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold)),
          Container(height: 7),
          Text('349,340원', style: TextStyle(color: Colors.grey[600])),
        ],
      ),
    ],
  );
}

Widget _icon2() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
              margin: const EdgeInsets.only(right: 20.0),
              child: Image.asset("img/paperplane.png", width: 25, height: 25)),
        ],
      ),
      Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          // Row에서는 mainAxis가 가로, crossAxis가 세로
          // Column에서는 crossAxis가 가로, mainAxis가 세로
          children: [
            const Text('용돈',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
            Container(height: 7),
            Text('Friday, 4 Feb', style: TextStyle(color: Colors.grey[600])),
          ]),
    ],
  );
}

Widget _detailsPeople3() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [_icon3()],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          const Text('- 17,600 원',
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
          Container(height: 7),
          Text('449,340원', style: TextStyle(color: Colors.grey[600])),
        ],
      ),
    ],
  );
}

Widget _icon3() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
              margin: const EdgeInsets.only(right: 20.0),
              child: Image.asset("img/money.png", width: 25, height: 25)),
        ],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          const Text('버거킹 한동대점',
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
          Container(height: 7),
          Text('Friday, 28 Jan', style: TextStyle(color: Colors.grey[600])),
        ],
      ),
    ],
  );
}

Widget _detailsPeople4() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [_icon4()],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          const Text('- 1,100 원',
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
          Container(height: 7),
          Text('466,940원', style: TextStyle(color: Colors.grey[600])),
        ],
      ),
    ],
  );
}

Widget _icon4() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
              margin: const EdgeInsets.only(right: 20.0),
              child: Image.asset("img/money.png", width: 25, height: 25)),
        ],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          const Text('APPLE',
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
          Container(height: 7),
          Text('Monday, 24 Jan', style: TextStyle(color: Colors.grey[600])),
        ],
      ),
    ],
  );
}

Widget _detailsPeople5() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [_icon5()],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          const Text('+ 3,510 원',
              style: TextStyle(
                  color: Color(0xFFB46834),
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold)),
          Container(height: 7),
          Text('468,040원', style: TextStyle(color: Colors.grey[600])),
        ],
      ),
    ],
  );
}

Widget _icon5() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
              margin: const EdgeInsets.only(right: 20.0),
              child: Image.asset("img/paperplane.png", width: 25, height: 25)),
        ],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          const Text('(주)카카오',
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
          Container(height: 7),
          Text('Friday, 21 Jan', style: TextStyle(color: Colors.grey[600])),
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
            color: Color(0xFF3C595B),
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
              icon: const Icon(Icons.star_rounded),
              color: Colors.grey[400],
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
                    const PopupMenuItem<int>(
                      value: 2,
                      child: Text("테마 변경"),
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
              color: Color(0xFF7E7354),
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
            '273,850 원',
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
            color: Color(0xFFB46834),
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

Widget _plusCard() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Container(
        width: 295,
        height: 195,
        margin: const EdgeInsets.only(top: 20.0),
        decoration: BoxDecoration(
            color: Colors.grey[400],
            borderRadius: const BorderRadius.all(Radius.circular(20)) //모서리를 둥글게
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_rounded),
              color: const Color(0xFF030404),
              iconSize: 60.0,
              onPressed: () {},
            ),
          ],
        ),
      ),
    ],
  );
}
