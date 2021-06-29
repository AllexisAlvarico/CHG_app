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
      backgroundColor: Color(0xFFE1DFDB), // cream color
      appBar: AppBar(
        title: Text(
          "The Front",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF303033), // black color
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
      child: isLoading
          ? Center(
              child: CircularProgressIndicator(
              backgroundColor: Color(0xFF303033), // black color
            ))
          : PDFViewer(
              document: document,
              pickerButtonColor: Color(0xFF303033), // black color
              navigationBuilder:
                  (context, page, totalPages, jumpToPage, animateToPage) {
                return Container(
                  color: Color(0xFF303033), // black color
                  child: ButtonBar(
                    alignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.first_page,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          animateToPage(page: 0);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () {
                          animateToPage(page: page! - 2);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_forward, color: Colors.white),
                        onPressed: () {
                          animateToPage(page: page);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.last_page, color: Colors.white),
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
              backgroundColor: Color(0xFF303033), // black color
            ))
          : PDFViewer(
              document: document,
              pickerButtonColor: Color(0xFF303033), // black color
              navigationBuilder:
                  (context, page, totalPages, jumpToPage, animateToPage) {
                return Container(
                  color: Color(0xFF303033), // black color
                  child: ButtonBar(
                    alignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.first_page,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          animateToPage(page: 0);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () {
                          animateToPage(page: page! - 2);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_forward, color: Colors.white),
                        onPressed: () {
                          animateToPage(page: page);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.last_page, color: Colors.white),
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
