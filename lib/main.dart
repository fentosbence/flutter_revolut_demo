import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'contacts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Revolut Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: Colors.grey.shade200,
      ),
      home: const MyHomePage(title: 'Revolut Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

ButtonStyle _myButtonStyle() {
  return ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade100),
    shape: MaterialStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
  );
}

class CustomButton extends StatefulWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  double opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        children: [
          Text(
            '2000 Ft',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(opacity),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.blue.shade100.withOpacity(opacity),
              child: Icon(
                Icons.keyboard_arrow_down,
                size: 15,
                color: Colors.blue.shade800.withOpacity(opacity),
              ),
            ),
          ),
        ],
      ),
      onTapDown: (e) {
        setState(() {
          opacity *= 0.5;
        });
      },
      onTapUp: (e) {
        setState(() {
          opacity *= 2;
        });
      },
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(14))),
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        const CustomButton(),
                        Expanded(child: Container()),
                        IconButton(
                            onPressed: () {},
                            icon: const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/Hungary.png'),
                              radius: 20,
                            )),
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(padding: EdgeInsets.all(3)),
                        Text(
                          'Magyar forint',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: TextButton(
                            style: _myButtonStyle(),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(
                                  Icons.add,
                                  size: 15,
                                  color: Colors.blue.shade800,
                                ),
                                Text(
                                  ' Hozzáadás',
                                  style: TextStyle(color: Colors.blue.shade800),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: TextButton(
                            onPressed: () {},
                            style: _myButtonStyle(),
                            child: Row(
                              children: [
                                Icon(
                                    size: 10,
                                    CupertinoIcons.arrow_right_arrow_left,
                                    color: Colors.blue.shade800),
                                Text(
                                  ' Átutalás',
                                  style: TextStyle(
                                    color: Colors.blue.shade800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: TextButton(
                            style: _myButtonStyle(),
                            onPressed: () {},
                            child: Icon(
                              size: 15,
                              Icons.more_horiz_outlined,
                              color: Colors.blue.shade800,
                            ),
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    const AssetImage('assets/images/pizza.png'),
                                radius: 18,
                                child: Container(
                                  alignment: Alignment.bottomRight,
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    radius: 8,
                                    child: Icon(
                                      size: 12,
                                      CupertinoIcons.clock_solid,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'McDonald\'s',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Ma, 16:38',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('-1610 Ft'),
                              Text(' '),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: const Text("Neked javasolt", textAlign: TextAlign.left),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/green.webp')),
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                    ),
                    height: 100,
                    width: 100,
                    child: Material(
                      type: MaterialType.transparency,
                      elevation: 6.0,
                      color: Colors.transparent,
                      shadowColor: Colors.white,
                      child: InkWell(
                        onTap: () {},
                        child: Stack(
                          children: [
                            Align(
                                alignment: Alignment.topRight,
                                child: GestureDetector(
                                  child: const Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Icon(
                                        Icons.close,
                                        color: Colors.white,
                                        size: 10,
                                      )),
                                )),
                            const Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    'Nyári kiruccanás a Szállásokkal',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: const Text("Elemzések", textAlign: TextAlign.left),
                  ),
                  Expanded(child: Container()),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Összes",
                        style: TextStyle(
                          color: Colors.blue.shade800,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(7),
                height: 200,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(14))),
                        margin: const EdgeInsets.all(3),
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Elköltve ebben a hónapban",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 12),
                            ),
                            const Padding(padding: EdgeInsets.all(2)),
                            const Text(
                              '700 Ft',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Icon(
                                  Icons.arrow_drop_down_outlined,
                                  color: Colors.green,
                                ),
                                Text(
                                  '800 Ft',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                )
                              ],
                            ),
                            const Expanded(
                              child: Image(
                                  image: AssetImage('assets/images/stock.png')),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(14))),
                        margin: const EdgeInsets.all(3),
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                'Kövesd nyomon a kiadásaidat, takarékoskodj többet, állíts be',
                                maxLines: 4),
                            Expanded(child: Container()),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  style: _myButtonStyle(),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.add,
                                        color: Colors.blue.shade900,
                                      ),
                                      Text(
                                        ' Beállítás',
                                        style: TextStyle(
                                            color: Colors.blue.shade900),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child:
                        const Text("Nettó vagyon", textAlign: TextAlign.left),
                  ),
                  Expanded(child: Container()),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Összes",
                        style: TextStyle(
                          color: Colors.blue.shade800,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(14))),
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          const Text(
                            "2 500 Ft",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Jelenlegi érték",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            children: const [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/coins.png'),
                                radius: 18,
                              ),
                            ],
                          ),
                          const Padding(padding: EdgeInsets.all(5)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Egyenleg pénzben',
                                //style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '2 számla',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          Expanded(child: Container()),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                '2000 Ft',
                              ),
                              Text(
                                '80%',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            children: const [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/tresor.png'),
                                radius: 18,
                              ),
                            ],
                          ),
                          const Padding(padding: EdgeInsets.all(5)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Megtakarítások',
                                //style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Megtakarítások',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          Expanded(child: Container()),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                '500 Ft',
                              ),
                              Text(
                                '20%',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            children: const [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/crypto.png'),
                                radius: 18,
                              ),
                            ],
                          ),
                          const Padding(padding: EdgeInsets.all(5)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Kriptopénz',
                                //style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Bitcoin',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          Expanded(child: Container()),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                '0 Ft',
                              ),
                              Text(
                                '0%',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: const Text("Szállások", textAlign: TextAlign.left),
              ),
              Container(
                height: 180,
                padding: const EdgeInsets.all(5),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.pink.shade200,
                              image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/spaceship.png'),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(14)),
                            ),
                            width: 150,
                            height: 150,
                            margin: const EdgeInsets.all(5),
                            child: Material(
                              type: MaterialType.transparency,
                              elevation: 6.0,
                              color: Colors.transparent,
                              shadowColor: Colors.white,
                              child: InkWell(
                                onTap: () {},
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.3),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(8)),
                                        ),
                                        margin: const EdgeInsets.all(15),
                                        padding: const EdgeInsets.all(4),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: const [
                                            Icon(
                                              Icons.access_time_filled_rounded,
                                              color: Colors.black,
                                              size: 8,
                                            ),
                                            Text(
                                              " Limitált ajánlat",
                                              style: TextStyle(fontSize: 8),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Text(
                                          'Extra pénzvisszatérítés Akár 90 000 Ft bónusz',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/green.webp')),
                            borderRadius: BorderRadius.all(Radius.circular(14)),
                          ),
                          width: 150,
                          height: 150,
                          margin: const EdgeInsets.all(10),
                          child: Material(
                            type: MaterialType.transparency,
                            elevation: 6.0,
                            color: Colors.transparent,
                            shadowColor: Colors.white,
                            child: InkWell(
                              onTap: () {},
                              child: Stack(
                                children: const [
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Text(
                                        'Fedezz fel még több csodás helyet',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.pink.shade200,
                            image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/spaceship.png'),
                                fit: BoxFit.cover),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(14)),
                          ),
                          width: 150,
                          height: 150,
                          margin: const EdgeInsets.all(5),
                          child: Material(
                            type: MaterialType.transparency,
                            elevation: 6.0,
                            color: Colors.transparent,
                            shadowColor: Colors.white,
                            child: InkWell(
                              onTap: () {},
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.3),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(8)),
                                      ),
                                      margin: const EdgeInsets.all(15),
                                      padding: const EdgeInsets.all(4),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: const [
                                          Icon(
                                            Icons.access_time_filled_rounded,
                                            color: Colors.black,
                                            size: 8,
                                          ),
                                          Text(
                                            " Limitált ajánlat",
                                            style: TextStyle(fontSize: 8),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Text(
                                        'Extra pénzvisszatérítés Akár 90 000 Ft bónusz',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: const Text("Legutóbbi fizetések",
                    textAlign: TextAlign.left),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(14))),
                margin: const EdgeInsets.all(10),
                height: 98,
                child: const Contacts(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: _myButtonStyle(),
                    child: Row(
                      children: [
                        Icon(
                          Icons.edit,
                          color: Colors.blue.shade900,
                          size: 12,
                        ),
                        Text(
                          " Feed szerkesztése",
                          style: TextStyle(
                            color: Colors.blue.shade900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
