import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soccer_app/presentation/providers/ligues/ligues_provider.dart';
import 'package:soccer_app/presentation/utils/assets_utlis.dart';

class LiguesScreen extends StatefulWidget {
  static const path = '/ligues';
  static const name = 'ligues';
  const LiguesScreen({super.key});

  @override
  State<LiguesScreen> createState() => _LiguesScreenState();
}

class _LiguesScreenState extends State<LiguesScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final leaguesProvider =
          Provider.of<LiguesProvider>(context, listen: false);
      leaguesProvider.getAllLigues();
    });
  }

  @override
  Widget build(BuildContext context) {
    final leaguesProvider = Provider.of<LiguesProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ligues"),
      ),
      body: ListView.builder(
        itemCount: leaguesProvider.allLeagues.length,
        itemBuilder: (BuildContext context, int index) {
          final league = leaguesProvider.allLeagues[index];
          return ListTile(
            leading: SizedBox(
              width: 65,
              height: 100,
                child: FadeInImage(
                  placeholder: AssetImage(AssetImageApp.getLoadingGif),
                  image: NetworkImage(league.logoPath),
                  fit: BoxFit.cover,
                )),
            title: Text(league.name),
            subtitle: Text(league.type),
          );
        },
      ),
    );
  }
}
