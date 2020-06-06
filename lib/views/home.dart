import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:RealEstateLedger/services/currency_format.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _changeNumberToPrice(String text) {
    setState(() {
      
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          margin: new EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '부동산 가격',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              TextFormField(  
                //validator: ,  
                // controller: controllerValor,  
                inputFormatters: [  
                    WhitelistingTextInputFormatter.digitsOnly,
                    // Fit the validating format.
                    //fazer o formater para dinheiro
                    CurrencyInputFormatter()
                ],
                keyboardType: TextInputType.number
              )
            ],
          ),
        ),
      ),
    );
  }
}
