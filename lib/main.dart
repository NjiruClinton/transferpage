import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
          home: Transfermain(),
          theme: ThemeData(fontFamily: 'Poppins'),
      ));
  
}

class Transfermain extends StatefulWidget {
  const Transfermain({Key? key}) : super(key: key);

  @override
  State<Transfermain> createState() => _TransfermainState();
}

class _TransfermainState extends State<Transfermain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,
        backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
        children: [
           Container(
            child: Container(
              margin: EdgeInsets.only(top: 45, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text("Transfers",
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ),
                  Container(
                    child: Text("Cancel",
                        style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Poppins',
                        color: Colors.black)),
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          Container(
            margin: EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: Text("Card", style: TextStyle(fontSize: 20, fontFamily: 'Poppins', fontWeight: FontWeight.w500)),
          ),
          CardPart(),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Text("Recipient", style: TextStyle(fontSize: 20, fontFamily: 'Poppins', fontWeight: FontWeight.w500)),
            alignment: Alignment.centerLeft,
          ),
          CategoriesScroller(),

          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Text("Amount", style: TextStyle(fontSize: 20, fontFamily: 'Poppins', fontWeight: FontWeight.w500)),
            alignment: Alignment.centerLeft,
          ),

          AmountPart(),
          SendPart(),
        ],
      ),
      ),
    );
  }
}

class CardPart extends StatefulWidget {
  const CardPart({Key? key}) : super(key: key);

  @override
  State<CardPart> createState() => _CardPartState();
}

class _CardPartState extends State<CardPart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      child: PageView.builder(
        itemCount: 5,
          itemBuilder: (context, position){
        return _buildPageItem(position);
      }
      ),
    );
  }
  Widget _buildPageItem(int index){
    return Container(
      height: 170,
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/card.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class RecipientPart extends StatelessWidget {
  const RecipientPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 100,
              color: Colors.purple[600],
              child: const Center(child: Text('Item 1', style: TextStyle(fontSize: 18, color: Colors.white),)),
            ),
            Container(
              width: 100,
              color: Colors.purple[500],
              child: const Center(child: Text('Item 2', style: TextStyle(fontSize: 18, color: Colors.white),)),
            ),
            Container(
              width: 100,
              color: Colors.purple[400],
              child: const Center(child: Text('Item 3', style: TextStyle(fontSize: 18, color: Colors.white),)),
            ),
            Container(
              width: 100,
              color: Colors.purple[300],
              child: const Center(child: Text('Item 4', style: TextStyle(fontSize: 18, color: Colors.white),)),
            ),
          ],
        ),

    );
  }
}


class AmountPart extends StatelessWidget {
  const AmountPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color( 0xFFedece8),
      ),
      child: Row(
        children: [
          Padding(padding: EdgeInsets.only(left: 20,),),
          Text("\$100", style: TextStyle(fontSize: 50, fontFamily: 'Poppins', fontWeight: FontWeight.w100)),
        ],
      ),

    );
  }
}

class SendPart extends StatelessWidget {
  const SendPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color( 0xFFdced1a),
      ),
      child: Row(
        children: [
          Padding(padding: EdgeInsets.only(left: 20,),),
          Text("SEND \$100", style: TextStyle(fontSize: 20, fontFamily: 'Poppins', fontWeight: FontWeight.w100)),
            Spacer(flex: 4,),
            CircleAvatar(
              radius: 25,
              backgroundColor: Color(0xff12332d),
              child: Transform.rotate(
                angle: -200,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_upward_sharp,
                    color: Colors.white,
                  ),
                  onPressed: null,
                ),
              ),
            ),
          Spacer(flex: 1,),
        ],
      ),

    );
  }
}

class CategoriesScroller extends StatelessWidget {
  const CategoriesScroller();

  @override
  Widget build(BuildContext context) {
    final double categoryHeight = MediaQuery.of(context).size.height * 0.30 - 50;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: Row(
            children: <Widget>[
              Container(
                width: 130,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight - 20,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(color: Color(0xFF475a78), spreadRadius: 2),
                    ]
                ),

                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        child: Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment(4, -1),
                            child: Icon(Icons.check),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            child: CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage('https://www.indiewire.com/wp-content/uploads/2022/01/AP21190389554952-e1643225561835.jpg'),
                        ),
                          ),
                        ],
                      ),
                      ),

                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Jocelyn",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Text(
                        "Lipshutz",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 130,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight - 20,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(color: Color(0xFFedece8), spreadRadius: 1)
                    ]),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoGon4Bb9bteQDWZJwu4pwXVnFVc3IS8Xz5g&usqp=CAU'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Hannah",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        Text(
                          "Culhane",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 130,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight - 20,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(color: Color(0xFFedece8), spreadRadius: 1)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage('https://images.hindustantimes.com/img/2021/08/11/original/Natasha-Peri.jpg_1628690022866.webp'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Emily",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Text(
                        "Harris",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
