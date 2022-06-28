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
             margin: EdgeInsets.only(top: 45, bottom: 15),
             padding: EdgeInsets.only(left: 20, right: 20),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("Transfers",
                     style: TextStyle(
                         fontSize: 30,
                         fontFamily: 'Poppins',
                         fontWeight: FontWeight.bold,
                         color: Colors.black)),
                 Text("Cancel",
                     style: TextStyle(
                     fontSize: 17,
                     fontFamily: 'Poppins',
                     color: Colors.black)),
               ],
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
      width: 300,
      margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xFFf7f7f7),
      ),
      child:Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(width: 13,),
                              Placeholder(
                                fallbackHeight: 10,
                                fallbackWidth:10,
                              ),
                          SizedBox(width: 7,),
                          Align(
                            alignment: Alignment(1.5, 5),
                            child: Text(
                              "Zilla Card",
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment(5.5, 5),
                  child: Text(
                    "\$4,158.29",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 18),
                  ),
                ),
                SizedBox(height: 5,),
                Align(
                  alignment: Alignment(0.4, 5),
                  child: Text(
                    "**** 5722",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
                  Container(
                    width: 230,
                    height: 170,
                    child: CustomPaint(
                      size: Size(230,(300*0.5666666666666667).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                      painter: RPSCustomPainter(),
                    ),
                  ),
              Align(
                alignment: Alignment(1, 1),
                child: Container(
                  height: 20,
                  width: 20,
                  alignment: FractionalOffset(2, 0),
                  //child: Image.asset("assets/images/overlap.png"),
                  clipBehavior: Clip.none,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
class RPSCustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Color(0xFF004952)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width,size.height*0.2347647);
    path0.lineTo(size.width,size.height*0.3320588);
    path0.quadraticBezierTo(size.width,size.height*0.7058235,size.width,size.height*0.8304118);
    path0.cubicTo(size.width*1.0056000,size.height*0.9074118,size.width*0.9682667,size.height*0.9868824,size.width*0.9194667,size.height);
    path0.cubicTo(size.width*0.7554333,size.height*0.9941176,size.width*0.4273667,size.height,size.width*0.2633333,size.height);
    path0.cubicTo(size.width*0.3417000,size.height*0.9793529,size.width*0.2974667,size.height*0.7336471,size.width*0.4286667,size.height*0.6625294);
    path0.cubicTo(size.width*0.5660333,size.height*0.6025294,size.width*0.6275667,size.height*0.6554118,size.width*0.7332333,size.height*0.3844118);
    path0.quadraticBezierTo(size.width*0.8802000,size.height*0.1584706,size.width,size.height*0.1562353);
    path0.lineTo(size.width,size.height*0.2347647);
    path0.close();
    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = Color(0XFFe8f64b)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path1 = Path();
    path1.moveTo(size.width*0.9584333,size.height*0.1626471);
    path1.cubicTo(size.width*0.8021333,size.height*0.1377647,size.width*0.6861667,size.height*0.2499412,size.width*0.6637667,size.height*0.3031765);
    path1.cubicTo(size.width*0.5617333,size.height*0.4976471,size.width*0.4517000,size.height*0.5153529,size.width*0.3221333,size.height*0.6101765);
    path1.cubicTo(size.width*0.2196000,size.height*0.6835882,size.width*0.1613667,size.height*0.9211765,size.width*0.1905667,size.height);
    path1.cubicTo(size.width*0.2107167,size.height,size.width*0.2510167,size.height,size.width*0.2711667,size.height);
    path1.cubicTo(size.width*0.3202333,size.height*0.9939412,size.width*0.3097000,size.height*0.7321176,size.width*0.4311667,size.height*0.6568824);
    path1.cubicTo(size.width*0.6090333,size.height*0.6081765,size.width*0.6445000,size.height*0.5932941,size.width*0.7236667,size.height*0.4056471);
    path1.cubicTo(size.width*0.7604333,size.height*0.3480588,size.width*0.8155333,size.height*0.2334118,size.width*0.9584333,size.height*0.1626471);
    path1.close();
    canvas.drawPath(path1, paint1);

    final paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 3;
    var position = Offset(200.0,120.0);
    canvas.drawCircle(position, 12.0, paint);

    final icon = Icons.circle_outlined;
    TextPainter textPainter = TextPainter(textDirection: TextDirection.rtl);
    textPainter.text = TextSpan(text: String.fromCharCode(icon.codePoint),
        style: TextStyle(fontSize: 32.0,fontFamily: icon.fontFamily,
          shadows: <Shadow>[
            Shadow(
              blurRadius: 4.0,
              color: Colors.black,
            ),
            Shadow(
              blurRadius: 10.0,
              color: Colors.black,
            ),
          ],));
    textPainter.layout();
    textPainter.paint(canvas, Offset(167.0,104.0));
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
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