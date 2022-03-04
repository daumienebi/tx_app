import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LiveKooraPage extends StatelessWidget {
  const LiveKooraPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: _drawer(),
        appBar: AppBar(
          title: const Text('Live Koora'),
        ),
        body: Column(
          children: [
            _webView()
          ],
        )
    );
  }


  Widget _webView() {
    return const Expanded(
      child: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://ma.livekoora.online/',
      ),
    );
  }
}
