import 'package:flutter/material.dart';
class  GoldappScreen extends StatefulWidget {
  const GoldappScreen({super.key});

  @override
  State<GoldappScreen> createState() => _GoldAppScreenState();
}
class _GoldAppScreenState extends State<GoldappScreen> {
  double totalPrice = 0.0;
  TextEditingController tolaPriceController = TextEditingController();
  TextEditingController tolaQuantityController = TextEditingController();
TextEditingController mashaQuantityController=TextEditingController();
TextEditingController rattiQuantityController=TextEditingController();
TextEditingController pointsQuantityController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange.shade400,
        title: Text("GoldApp",style:TextStyle(color:Colors.white)),

        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(backgroundColor:Colors.orange,
          onPressed: () {
        tolaPriceController.clear();
        tolaQuantityController.clear();
        mashaQuantityController.clear();
        rattiQuantityController.clear();
        pointsQuantityController.clear();
        totalPrice = 0.0;

        setState(() {

        });}
      ,child:Icon(Icons.refresh,color: Colors.white,),),

      body:SingleChildScrollView(child:
    Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 22),
            margin: EdgeInsets.only(left: 42, right: 42, top: 22, bottom: 22),
            decoration: BoxDecoration(border: Border.all(color: Colors.orange.shade400),
                borderRadius: BorderRadius.circular(9)),

            child: TextFormField(
              style: TextStyle(color: Colors.orange),
              controller: tolaPriceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter tola price',
                hintStyle: TextStyle(color: Colors.orange),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 22),
            margin: EdgeInsets.only(left: 42, right: 42, top: 22, bottom: 22),
            decoration: BoxDecoration(border: Border.all(color: Colors.orange.shade400),
                borderRadius: BorderRadius.circular(9)),
            child: TextFormField(
              style: TextStyle(color: Colors.orange),
              controller: tolaQuantityController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter tola quantity',
                hintStyle: TextStyle(color: Colors.orange),
              ),
            ),
          ), Container(
    padding: EdgeInsets.only(left: 22),
    margin: EdgeInsets.only(left: 42, right: 42, top: 22, bottom: 22),
    decoration: BoxDecoration(border: Border.all(color: Colors.orange.shade400),
    borderRadius: BorderRadius.circular(9)),
    child: TextFormField(
    style: TextStyle(color: Colors.orange),
    controller: mashaQuantityController,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
    hintText: 'Enter Masha Quantity',
    hintStyle: TextStyle(color: Colors.orange),
    ),
    ),
          ), Container(
    padding: EdgeInsets.only(left: 22),
    margin: EdgeInsets.only(left: 42, right: 42, top: 22, bottom: 22),
    decoration: BoxDecoration(border: Border.all(color: Colors.orange.shade400),
    borderRadius: BorderRadius.circular(9)),
    child: TextFormField(
    style: TextStyle(color: Colors.orange),
    controller: rattiQuantityController,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
    hintText: 'Enter Ratti Quantity',
    hintStyle: TextStyle(color: Colors.orange),
    ),
    ),
          ), Container(
    padding: EdgeInsets.only(left: 22),
    margin: EdgeInsets.only(left: 42, right: 42, top: 22, bottom: 22),
    decoration: BoxDecoration(border: Border.all(color: Colors.orange.shade400),
    borderRadius: BorderRadius.circular(9)),
    child: TextFormField(
    style: TextStyle(color: Colors.orange),
    controller: pointsQuantityController,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
    hintText: 'Enter points ',
    hintStyle: TextStyle(color: Colors.orange),
    ),
    ),
          ),
           Text('Result:$totalPrice',style: const TextStyle(color: Colors.orange,fontSize: 30),),

           GestureDetector(
            onTap: () {
              if(tolaPriceController.text=='')
                {
                  tolaPriceController.text='0';
                  setState(() {

                  });
                }
              if(tolaQuantityController.text=='')
                {
                  tolaQuantityController=='0';
                  setState(() {

                  });
                }
              print("on tap");
              double tolaprice = double.parse(tolaPriceController.text);
              double tolaquantity = double.parse(tolaQuantityController.text);
              double pricePerMasha=tolaprice/12;

              double mashaQuantity=double.parse (mashaQuantityController.text);
              double totalPriceMasha=pricePerMasha*mashaQuantity;

              double rattiQuantity=double.parse (rattiQuantityController.text);
              double pricePerRatti=totalPrice/96;
              double totalPriceRatti=pricePerRatti*rattiQuantity;
              double pricePerPoint=tolaprice/320;
              double pointsQuantity=double.parse(pointsQuantityController.text);
              double totalPricePoint=pricePerPoint*pointsQuantity;

              totalPrice =( tolaprice * tolaquantity)+totalPriceMasha+totalPriceRatti+totalPricePoint;

              print('Total price:$totalPrice');
              setState(() {

              });
            },
            child: Container(
              margin: EdgeInsets.only(top: 20),
              height: 41,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.orange.shade400,
                borderRadius: BorderRadius.circular(6),),
              child: Center(child: Text(
                'Calculate', style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white),),),
            ),
          )
    ],),

      ) );
  }
}