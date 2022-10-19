class Team {
  Team({
    required this.teamId,
    required this.teamName,
    this.companyName = 'default company',
    this.teamStatus = 'active'

  });
  String teamId;
  String teamName;
  String? teamStatus;
  String? companyName;


}