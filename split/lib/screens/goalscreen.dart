import 'package:access/classes/Goals.dart';
import 'package:access/firestoreservice.dart';
import 'package:access/navigation/navigate.dart';
import 'package:access/screens/group.dart';

import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';



class GoalScreen extends StatefulWidget {
  final Goals goal;
  GoalScreen(this.goal);
  @override
  _GoalScreenState createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  FirestoreService fireServ = new FirestoreService();

  TextEditingController _goalNameController;
  TextEditingController _goalAimController;
  TextEditingController _startDateController;
  TextEditingController _depositPerPeriodController;
  TextEditingController _currentTotalController;
  TextEditingController _teamMembersController;


 int _myGoalType = 0;
  String goalVal;
  void _handleGoalType(int value) {
    setState(() {
      _myGoalType = value;
      switch (_myGoalType) {
        case 1:
         goalVal='travel';
          break;
        case 2:
           goalVal='gift';
          break;
        case 3:
           goalVal='group';
          break;
        case 4:
           goalVal='emergency';
          break;
        case 5:
          goalVal ='other';
          break;
      }
    });
  }
  
  int _myGoalCategory = 0;
  String goalCat;
  void _handleGoalCategory(int value1){
    setState(() {
      _myGoalCategory = value1;
      switch(_myGoalCategory){
        case 1:
          goalCat = 'personal';
        break;
        case 2:
          goalCat='group';
      }
    });
  }

  int _myPaymentFrequency = 0;
  String paymentFrequency;
  void _handlePaymentFrequency(int value2){
    setState((){
      _myPaymentFrequency = value2;
      switch(_myPaymentFrequency){
        case 1:
            paymentFrequency = 'weekly';
          break;
        case 2:
            paymentFrequency = 'monthly';
          break;
      }
    });
  }

  int _myAccountNumber = 0;
  String accountNumber;
  void _handleAccountNumber(int value3){
    setState(() {
      _myAccountNumber = value3;
      switch(_myAccountNumber){
        case 1:
          accountNumber = 'Midas Card (...6498)';
          break;
        case 2:
          accountNumber = 'Classic KeyCard(...9780)';
          break;
      }
    });
  }
  

  @override
  void initState() {
    super.initState();
  _goalNameController = new TextEditingController(text:widget.goal.goalName);
  _goalAimController= new TextEditingController (text:widget.goal.goalAim);
  _startDateController= new TextEditingController (text:widget.goal.startDate);
  _depositPerPeriodController= new TextEditingController (text:widget.goal.depositPerPeriod);
 _currentTotalController= new TextEditingController (text:widget.goal.currentTotal);
  _teamMembersController= new TextEditingController (text:widget.goal.teamMembers);
  }

DateTime date2;
String date;
String valp = '0.001';

  @override
   Widget build(BuildContext context) {
   //var percentt = double.parse(${items[index].startDate});
    return Scaffold(
    resizeToAvoidBottomInset: false,
    resizeToAvoidBottomPadding: false,
    
      //body:
      body: Column(
        children: <Widget>[
         _myAppBar(),
          Container(
            color: Colors.white,
           /* decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              const Color(0xFFFA7397),
              const Color(0xFFFDDE42),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),*/
          
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 80,
            child: ListView(
              children: <Widget>[
                Center(
                  child: Text(
                    'Select Goal Category:',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Radio(
                          value: 1,
                          groupValue: _myGoalCategory,
                          onChanged: _handleGoalCategory,
                          activeColor: Color(0xff4158ba),
                        ),
                        Text(
                          'personal',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Radio(
                          value: 2,
                          groupValue: _myGoalCategory,
                          onChanged: _handleGoalCategory,
                        ),
                        Text(
                          'group',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ), 
                     //TextAndIconButton(),
                     RaisedButton(
                        color: Color(0xFFFA7397),
                        onPressed: () {
                          _showMember();
                        },
                        child: const Text(
                          "Add group member",
                          style: TextStyle(color: Color(0xFFFDDE42)),
                        )),
                    SizedBox(
                     height: 10.0,
                    ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  child: TextField(
                   controller: _goalNameController,
                    decoration: InputDecoration(labelText: "Goal Name: "),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: _goalAimController,
                    decoration: InputDecoration(labelText: "Estimated Goal Amount: ")
                  ),
                ),
                
                Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  child: DateTimePickerFormField(
                        inputType: InputType.date,
                        format: DateFormat("yyyy-MM-dd"),
                        initialDate: DateTime(2019, 07, 1),
                        editable: false,
                        decoration: InputDecoration(
                        
                        labelText: ' Date',
                        hasFloatingPlaceholder: false
                         ),
                         onChanged: (dt) {
                         setState(() => date2 = dt);
                         print('Selected date: $date2');
                         String dayvalue = date2.day.toString();
                         String monthvalue = date2.month.toString();
                         String yearvalue = date2.year.toString();
                         date = "$dayvalue - $monthvalue -$yearvalue";
                     },
                  ),
                  // controller: _taskTimeController,
         
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Center(
                  child: Text(
                    'Select Goal Type:',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Radio(
                          value: 1,
                          groupValue: _myGoalType,
                          onChanged: _handleGoalType,
                          activeColor: Color(0xff4158ba),
                        ),
                        Text(
                          'travel',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Radio(
                          value: 2,
                          groupValue: _myGoalType,
                          onChanged: _handleGoalType,
                          activeColor: Color(0xfffb537f),
                        ),
                        Text(
                          'gift',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Radio(
                          value: 3,
                          groupValue: _myGoalType,
                          onChanged: _handleGoalType,
                          activeColor: Color(0xff4caf50),
                        ),
                        Text(
                          'group',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Radio(
                          value: 4,
                          groupValue: _myGoalType,
                          onChanged: _handleGoalType,
                          activeColor: Color(0xff9962d0),
                        ),
                        Text(
                          'emergency',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Radio(
                          value: 5,
                          groupValue: _myGoalType,
                          onChanged: _handleGoalType,
                          activeColor: Color(0xff0dc8f5),
                        ),
                        Text(
                          'other',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Center(
                  child: Text(
                    'Select Funding Account',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Radio(
                          value: 1,
                          groupValue: _myAccountNumber,
                          onChanged: _handleAccountNumber,
                          activeColor: Color(0xff4158ba),
                        ),
                        Text(
                          'SAVINGS (...6498)',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Radio(
                          value: 2,
                          groupValue: _myAccountNumber,
                          onChanged: _handleAccountNumber,
                          activeColor: Color(0xfffb537f),
                        ),
                        Text(
                          'CHEQUING (...9780)',
                          style: TextStyle(fontSize: 16.0
                          ),
                        ),
                      ],
                    ),
                   ], //row
                ),
                 SizedBox(
                  height: 40.0,
                 ),
                Center(
                  child: Text(
                    'Select Funding Frequency:',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Radio(
                          value: 1,
                          groupValue: _myPaymentFrequency,
                          onChanged: _handlePaymentFrequency,
                          activeColor: Color(0xff4158ba),
                        ),
                        Text(
                          'weekly',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Radio(
                          value: 2,
                          groupValue: _myPaymentFrequency,
                          onChanged: _handlePaymentFrequency,
                          activeColor: Color(0xfffb537f),
                        ),
                        Text(
                          'monthly',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ), 
                    SizedBox(
                     height: 10.0,
                    ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                        color: Color(0xFFFA7397),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          "Cancel",
                          style: TextStyle(color: Color(0xFFFDDE42)),
                        )),
                    // This button results in adding the contact to the database
                    RaisedButton(
                        color: Color(0xFFFA7397),
                        onPressed: () {
                          _showDialog();
                        },
                        child: const Text(
                          "Submit",
                          style: TextStyle(color: Color(0xFFFDDE42)),
                        ))
                  ],//Widget,
                ),//Row
                  ]),
            ],
          ),
              ]),
          )],
 
     ),
    );//Sacffold
  }

  Widget _myAppBar() {
    return Container(
      height: 80.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              const Color(0xFFFA7397),
              const Color(0xFFFDDE42),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                child: IconButton(
                    icon: Icon(
                      FontAwesomeIcons.arrowLeft,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                child: Text(
                  'New Goal',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }

   void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text(
            "Confirmation of Goal",
            ),
          content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Name: St.Lucia'),
              Text('Aim : \$50,000'),
              Text('Funding : SAVINGS (...6498)'),
              Text('Goal Type: Group '),
              Text('Payment Frequency: Weekly'),
              Text('Weekly Deposits : \$12,500'),
              Text('Please be reminded of Split saving rules'),
            ],
          ),
        ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Confirm"),
              onPressed: () {
                //Navigator.of(context).pop();
                fireServ.createTODOGoal(_goalNameController.text,_goalAimController.text ,goalCat, valp, date,
                           _depositPerPeriodController.text, _currentTotalController.text, _teamMembersController.text, 
                           _goalAimController.text,paymentFrequency,goalVal,accountNumber).then((_){
                          });
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Navigate()));
              },
            ),
            new FlatButton(
              child: new Text("Cancel"),
              onPressed: () {
                  Navigator.pop(context);

              }
            ),
          ],
        );
      },
    );
  }

   void _showMember() {
     String teamName = '';
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text(
            "Add A Savings Buddy ",
            ),
          content: new Row(
          children: <Widget>[
            new Expanded(
                child: new TextField(
              autofocus: true,
              decoration: new InputDecoration(
                  labelText: 'Team Member Name', hintText: 'eg. Tuwanie97 '),
              onChanged: (value) {
                teamName = value;
              },
            ))
          ],
        ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Confirm"),
              onPressed: () {
                //Navigator.of(context).pop();
                /*fireServ.createTODOGoal(_goalNameController.text,_goalAimController.text ,goalCat, _startDateController.text, date,
                           _depositPerPeriodController.text, _currentTotalController.text, _teamMembersController.text, 
                           _goalAimController.text,paymentFrequency,goalVal,accountNumber).then((_){
                          });
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Navigate()));*/
                 Navigator.pop(context);
              },
            ),
            new FlatButton(
              child: new Text("Cancel"),
              onPressed: () {
                  Navigator.pop(context);

              }
            ),
          ],
        );
      },
    );
  }
}