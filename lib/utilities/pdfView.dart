import 'package:chg/globals.dart';
import 'package:flutter/material.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';

class PDFView extends StatefulWidget {
  final String path;

  PDFView({Key? key, required this.path}) : super(key: key);

  @override
  _PDFViewState createState() => _PDFViewState();
}

class _PDFViewState extends State<PDFView> {
  bool isLoading = true;
  late PDFDocument document;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: textColor,
            ),
            onPressed: () => Navigator.pop(context, false)),
        title: Text(
          "The Front",
          style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontFamily: "Futura"),
        ),
        backgroundColor: appbarColor,
      ),
      body: _layoutDetails(),
    );
  }

  Widget _layoutDetails() {
    Orientation orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      return Container(
        child: _porttrait(),
      );
    } else {
      return Container(
        child: _landscape(),
      );
    }
  }

  Widget _porttrait() {
    return Container(
      color: backgroundColor,
      child: isLoading
          ? Center(
              child: CircularProgressIndicator(
              color: textColor,
              backgroundColor: textColor,
            ))
          : PDFViewer(
              document: document,
              pickerButtonColor: appbarColor,
              pickerIconColor: textColor,
              navigationBuilder:
                  (context, page, totalPages, jumpToPage, animateToPage) {
                return Container(
                  color: appbarColor,
                  child: ButtonBar(
                    alignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.first_page,
                          color: textColor,
                        ),
                        onPressed: () {
                          animateToPage(page: 0);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_back, color: textColor),
                        onPressed: () {
                          animateToPage(page: page! - 2);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_forward, color: textColor),
                        onPressed: () {
                          animateToPage(page: page);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.last_page, color: textColor),
                        onPressed: () {
                          animateToPage(page: totalPages! - 1);
                        },
                      )
                    ],
                  ),
                );
              },
            ),
    );
  }

  Widget _landscape() {
    return Container(
      child: isLoading
          ? Center(
              child: CircularProgressIndicator(
              backgroundColor: appbarColor,
            ))
          : PDFViewer(
              document: document,
              pickerButtonColor: appbarColor,
              navigationBuilder:
                  (context, page, totalPages, jumpToPage, animateToPage) {
                return Container(
                  color: appbarColor,
                  child: ButtonBar(
                    alignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.first_page,
                          color: textColor,
                        ),
                        onPressed: () {
                          animateToPage(page: 0);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_back, color: textColor),
                        onPressed: () {
                          animateToPage(page: page! - 2);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_forward, color: textColor),
                        onPressed: () {
                          animateToPage(page: page);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.last_page, color: textColor),
                        onPressed: () {
                          animateToPage(page: totalPages! - 1);
                        },
                      )
                    ],
                  ),
                );
              },
            ),
    );
  }

  loadDocument() async {
    document = await PDFDocument.fromURL(widget.path);
    setState(() {
      isLoading = false;
    });
  }
}
