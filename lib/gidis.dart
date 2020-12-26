
import 'package:flutter/material.dart';
import 'package:iman_hakikatleri/imanhakikatleri.dart';

void main() {
  ImanHakikatleri imanhakikat;
  runApp(MaterialApp(home: ImanHakikati(imanhakikat)));
}

class ImanHakikati extends StatefulWidget {

  ImanHakikatleri imanhakikat;
  ImanHakikati(ImanHakikatleri imanhakikat){
    this.imanhakikat = imanhakikat;
  }

  @override
  _ImanHakikati createState() {
    return _ImanHakikati(imanhakikat);
  }
}

class _ImanHakikati extends State<ImanHakikati> {

  ImanHakikatleri imanhakikat;
  _ImanHakikati(ImanHakikatleri imanhakikat){
    this.imanhakikat = imanhakikat;
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(imanhakikat.img,fit: BoxFit.cover,),
              title: Text(imanhakikat.statement),

            ),
          )
        ],
      ),

    );
  }
}