

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter/webview_flutter.dart';


import 'nav_bar.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {

  late final WebViewController _controller;

  var url = 'https://www.prothomalo.com/';

  WebViewController controller = WebViewController();

  //bool shouldPop = true;
  Future<bool> _onBackButtonPress() async {
    return (await showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to exit an App'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: new Text('Yes'),
          ),
        ],
      ),
    )) ?? false;
  }

  // WebViewController controller = WebViewController()
  //   ..setJavaScriptMode(JavaScriptMode.unrestricted)
  //   ..setNavigationDelegate(
  //     NavigationDelegate(
  //       onProgress: (int progress) {
  //         // Update loading bar.
  //       },
  //       onPageStarted: (String url) {},
  //       onPageFinished: (String url) {},
  //       onHttpError: (HttpResponseError error) {},
  //       onWebResourceError: (WebResourceError error) {},
  //       onNavigationRequest: (NavigationRequest request) {
  //         if (request.url.startsWith('https://www.youtube.com/')) {
  //           return NavigationDecision.prevent;
  //         }
  //         return NavigationDecision.navigate;
  //       },
  //     ),
  //   )
  //   ..loadRequest(Uri.parse('https://prachurja.com'));


  ///============================================================ initState =======================================================///
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onHttpError: (HttpResponseError error) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://prachurja.com')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://prachurja.com'));

    // _controller = WebViewController()..loadRequest(Uri.parse(url));
    // _controller..setNavigationDelegate(
    //  NavigationDelegate(
    //    onPageStarted: (url) {
    //      setState(() {
    //
    //      });
    //    }
    //    onProgress:
    //  )
    // )


  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //appBar: AppBar(title: const Text('Flutter Simple Example')),
      body: SafeArea(child: WebViewWidget(controller: controller),),
    );

    // return WillPopScope(
    //   onWillPop: _onBackButtonPress,
    //   child: Scaffold(
    //       drawer: NavBar(),
    //       appBar: AppBar(
    //         title: Text('Go Together'),
    //         centerTitle: true,
    //       ),
    //       body: WebView(
    //         initialUrl: 'https://flutter.dev',
    //         javascriptMode: JavascriptMode.unrestricted,
    //         onWebViewCreated: (WebViewController webViewController) {
    //           _controller = webViewController;
    //         },
    //       )
    //     ),
    // );



  }
}
