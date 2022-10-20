class Team {
  Team({
    required this.teamId,
    required this.teamName,
    this.companyName = 'default company',
    this.teamStatus = 'active',
    this.companyId = '001'

  });
  String teamId;
  String teamName;
  String? teamStatus;
  String? companyName;
  String? companyId;

  void setID(String id){
    this.teamId = id;
  }

  // to json method
  Map<String, dynamic> toJson() {
    return {
      'teamId': teamId,
      'teamName': teamName,
      'teamStatus': teamStatus,
      'companyName' : companyName,
      'companyId' : companyId,

    };
  }


}