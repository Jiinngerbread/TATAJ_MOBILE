class Goals {
  String _goalName;
  String _goalCategory;
  String _goalAim; 
  String _startDate;
  String _endDate;
  String _paymentFrequency;
  String _depositPerPeriod;
  String _currentTotal;
  String _teamMembers;
  String _goalMasterTarget;
  String _goalType;
  String _accountNumber;



  Goals(this._goalName, this._goalAim,this._goalCategory, this._startDate,
  this._endDate, this._depositPerPeriod, this._currentTotal, this._teamMembers,
   this._goalMasterTarget, this._paymentFrequency,this._goalType, this._accountNumber);

  Goals.map(dynamic obj)
  {
    this._goalName =  obj["goalName"];
    this._goalCategory = obj["goalCategory"];
    this._goalAim = obj["goalAim"];
    this._startDate = obj["startDate"];
    this._endDate = obj["endDate"];
    this._paymentFrequency = obj["paymentFrequency"];
    this._depositPerPeriod = obj["dedositPerPeriod"];
    this._currentTotal= obj["currentTotal"];
    this._teamMembers= obj["teamMembers"];
    this._goalMasterTarget = obj["goalMasterTarget"];
    this._goalType = obj["goalType"];
    this._accountNumber = obj["accountNumber"];
  }

  String get goalName => _goalName;
  String get goalCategory => _goalCategory;
  String get goalAim => _goalAim; 
  String get startDate =>_startDate;
  String get endDate =>_endDate;
  String get paymentFrequency =>_paymentFrequency;
  String get depositPerPeriod =>_depositPerPeriod;
  String get currentTotal => _currentTotal;
  String get teamMembers =>_teamMembers;
  String get goalMasterTarget => _goalMasterTarget;
  String get goalType => _goalType;
  String get accountNumber => accountNumber;

  Map<String,dynamic> toMap(){
    var map = new Map<String,dynamic>();
    map['goalName'] = _goalName;
    map['goalCategory'] = _goalCategory;
    map['goalAim'] = _goalAim;
    map['startDate'] = _startDate;
    map['endDate'] = endDate;
    map['paymentFrequency'] = _paymentFrequency;
    map['depositPerPeriod'] = _depositPerPeriod;
    map['currentTotal'] = _currentTotal;
    map['teamMembers'] = _teamMembers;
    map['goalMasterTarget'] = _goalMasterTarget;
    map['goalType'] = _goalType;
    map['_accountNumber'] = _accountNumber;
    return map;
  }

  Goals.fromMap(Map<String,dynamic>map){
    this._goalName =  map['goalName'];
    this._goalCategory = map['goalCategory'];
    this._goalAim = map['goalAim'];
    this._startDate = map['startDate'];
    this._endDate = map['endDate'];
    this._paymentFrequency = map['paymentFrequency'];
    this._depositPerPeriod = map['depositPerPeriod'];
    this._currentTotal= map['currentTotal'];
    this._teamMembers= map['teamMembers'];
    this._goalMasterTarget = map['goalMasterTarget'];
    this._goalType = map["goalType"];
    this._accountNumber = map["accountNumber"];
  }
}
