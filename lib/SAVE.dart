//
// WebView(
//   javascriptMode: JavascriptMode.unrestricted,
//   initialUrl:("${firstproviderfalse.selectv.url}"),
//   onWebViewCreated: (WebViewController webViewController){
//     _webViewController = webViewController;
//   },),
//   body: InAppWebView(
//    initialUrlRequest: URLRequest(url:Uri.parse("${firstproviderfalse.selectv.url}") ),
//     initialOptions: InAppWebViewGroupOptions(
//         crossPlatform: InAppWebViewOptions(
//          disableHorizontalScroll: true,
//           disableContextMenu: true,
//         )),
//     onWebViewCreated: (InAppWebViewController controller) {
//       _webViewController = controller;
//     },
//     onLoadStart: (InAppWebViewController controller,url) {
//       setState(() {
//         this.url = url as String;
//       });
//     },
//     onLoadStop:
//         (InAppWebViewController controller,url) async {
//       setState(() {
//         this.url = url as String;
//       });
//     },
//     onProgressChanged:
//         (InAppWebViewController controller, int progress) {
//       setState(() {
//         this.progress = progress / 100;
//       });
//     },
//   ),