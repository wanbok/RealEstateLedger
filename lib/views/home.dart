import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:RealEstateLedger/services/currency_format.dart';

enum AssetType { apartment, officetel }

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title, this.assetType}) : super(key: key);

  final String title;
  AssetType assetType = AssetType.apartment;

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
                '부동산 종류 선택',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Row(
                children: [
                  ListTile(
                    title: const Text('아파트'),
                    leading: Radio(
                      value: AssetType.apartment,
                      groupValue: widget.assetType,
                      onChanged: (AssetType value) {
                        setState(() {
                          widget.assetType = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('오피스텔'),
                    leading: Radio(
                      value: AssetType.officetel,
                      groupValue: widget.assetType,
                      onChanged: (AssetType value) {
                        setState(() {
                          widget.assetType = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
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
              ),
              Text(
                '구매일',
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
