import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final String header;

  Home({Key key, this.header}) : super(key: key);
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {

  String desc = "This app detects and outputs the service provider of any Nigerian number giving to it.";
  String ent = "Enter digits without intl code (+234)";
  
  final TextEditingController _numberControl = new TextEditingController(

  );


  void _detect(){
    String number = _numberControl.text.toString();
    if(number.length == 11){
      if(number.contains("0809") || number.contains("0909") ||
          number.contains("0817") || number.contains("0818") ||
          number.contains("0908")){

        String network = "9Mobile";
        String message = "This number belongs to $network";
        _showAlert(context, "$message");

      }else if(number.contains("'0806") || number.contains("0803") ||
          number.contains("0816") || number.contains("0813") ||
          number.contains("0810") || number.contains("0814") ||
          number.contains("0903") || number.contains("0906") ||
          number.contains("0703") || number.contains("0706")){

        String network = "MTN";
        String message = "This number belongs to $network";
        _showAlert(context, "$message");

      }else if(number.contains("0805") || number.contains("0705") ||
          number.contains("0905") || number.contains("0807") ||
          number.contains("0815")){

        String network = "GLO";
        String message = "This number belongs to $network";
        _showAlert(context, "$message");


      }else if(number.contains("0802") || number.contains("0902") ||
          number.contains("0701") || number.contains("0808") ||
          number.contains("0708") || number.contains("0812") ||
          number.contains("0907")){

        String network = "Airtel";
        String message = "This number belongs to $network";
        _showAlert(context, "$message");



      }else if(number.contains("07028") || number.contains("07029") ||
          number.contains("0819")){

        String network = "Starcomms";
        String message = "This number belongs to $network";
        _showAlert(context, "$message");



      }else if(number.contains("07025") || number.contains("07026") ||
          number.contains("0704")){

        String network = "Visafone";
        String message = "This number belongs to $network";
        _showAlert(context, "$message");


      }else if(number.contains("07027") || number.contains("0709")){

        String network = "Multilinks";
        String message = "This number belongs to $network";
        _showAlert(context, "$message");


      }else if(number.contains("0707")){

        String network = "Zoom";
        String message = "This number belongs to $network";
        _showAlert(context, "$message");


      }else if(number.contains("0804")){

        String network = "ntel";
        String message = "This number belongs to $network";
        _showAlert(context, "$message");


      }else if(number.contains("0702")){

        String network = "Smile";
        String message = "This number belongs to $network";
        _showAlert(context, "$message");


      }else{

        String message = "Something is not right";
        _showAlert(context, "$message");

      }
      
    }else{
      String message = "Something is wrong with the number";
      _showAlert(context, "$message");
    }
    

  }
  
  
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
        title: Text(
          "${widget.header}",
          style: TextStyle(
              color: Colors.red),
        ),

        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon:Icon(
                Icons.info_outline,
                color: Colors.red,
              ),
              onPressed: () => _showAlertInfo(context)
          )

        ],
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        alignment: Alignment.center,
        child: Center(
          child: ListView(
            children: <Widget>[

              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Text(
                  "$desc",
                  style: TextStyle(
                    fontSize: 17.0,
                  ),

                ),

              ),

              Container(
                margin: EdgeInsets.only(top: 60.0),
                child: Text("$ent"),
              ),

              Theme(
                data: ThemeData(
                  primaryColor: Colors.redAccent,
                  primaryColorDark: Colors.red,
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 10.0, bottom: 30.0),
                  child: TextField(
                    controller: _numberControl,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)
                      ),
                      hintText: "Number",
                      labelText: "Number",
                      helperText: 'Nigerian Numbers Only!!!',

                    ),
                  ),
                ),
              ),
              
              Container(
                height: 50.0,
                child: RaisedButton(
                  color: Colors.red,
                  onPressed: _detect,
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showAlert(BuildContext context, String message){
    var alert = new AlertDialog(
      title: Text("${widget.header}"),
      content: Text("$message"),


      actions: <Widget>[
        
        FlatButton(
          onPressed: (){Navigator.pop(context);},
          child: Text("OK"),
        ),
      ],
    );

    showDialog(context: context, builder: (context) => alert);
  }

  //Function to Show Alert Dialog for showing app details
  void _showAlertInfo(BuildContext context){
    var alert = new AlertDialog(
      title: Text("Info"),
      content: Text("Made With Flutter by Jide"),

      actions: <Widget>[

        FlatButton(
          onPressed: (){Navigator.pop(context);},
          child: Text("OK"),
        )
      ],
    );

    showDialog(context: context, builder: (context)=> alert);
  }
}
