import 'package:customer_feedback_analysis/api/team_api.dart';
import 'package:customer_feedback_analysis/model/team.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTeam extends StatefulWidget {
  const AddTeam({Key? key}) : super(key: key);

  @override
  State<AddTeam> createState() => _AddTeamState();
}

class _AddTeamState extends State<AddTeam> {

  // use this controller to get what user typed
  final _teamNameController = TextEditingController();
  final _teamStatusController = TextEditingController();

  TeamApi apiInstance = TeamApi();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Add a new team'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 500,
          margin: const EdgeInsets.symmetric(
              // horizontal: screenSize.width * 0.2,
              vertical: 50
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              TextField(
                maxLines: 1,
                controller: _teamNameController,
                decoration: const InputDecoration(
                  hintText: "Team Name",
                  border: OutlineInputBorder(),

                ),
              ),
              SizedBox(height: 15,),
              TextField(
                maxLines: 1,
                controller: _teamStatusController,
                decoration: const InputDecoration(
                  hintText: "Team Status (eg. active)",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15,),
              MaterialButton(
                onPressed: (){
                  Team t = Team(teamId: '',
                      teamName: _teamNameController.text,
                    teamStatus: _teamStatusController.text,

                  );

                  apiInstance.insertTeam(team: t);
                  Navigator.pop(context);



                },
                color: Colors.green,
                child: const Text("Save",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),

              ),
            ],
          ),
        ),
      ),

    );
  }
}
