import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class TeamXpectrumPage extends StatelessWidget {
  const TeamXpectrumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: _drawer(context),
        appBar: AppBar(
          title: const Text('Team Xpectrum'),
        ),
        body: Column(
          children: [
            _webView()
          ],
        )
    );
  }


  Widget _webView(){
    return const Expanded(
      child: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://www.xpectrumuwu.com/',
      ),
    );
  }

  Drawer _drawer(context){
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            color: Colors.pink,
          ),
          ListTile(
            title: Text('LiveKoora'),
            leading: Icon(Icons.sports_soccer),
            onTap: (){
              Navigator.pushNamed(context, 'livekoora');
            }
          )
        ],
      ),
    );
  }
}
