import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class pdf_page extends StatefulWidget {
  final index;
  const pdf_page({super.key, required this.index});

  @override
  State<pdf_page> createState() => _pdf_pageState();
}

List pdf = [
  "assets/Harry Potter - Book 1 - The Sorcerers Stone.pdf",
  "assets/Harry Potter - Book 2 - The Chamber of Secrets.pdf",
  "assets/Harry Potter - Book 3 - The Prisoner of Azkaban.pdf",
  "assets/Harry Potter - Book 4 - The Goblet of Fire.pdf",
  "assets/Harry Potter - Book 5 - The Order of the Phoenix.pdf",
  "assets/Harry Potter - Book 6 - The Half-Blood Prince.pdf",
  "assets/Harry Potter - Book 7 - The Deathly Hallows.pdf"
];

class _pdf_pageState extends State<pdf_page> {
  final GlobalKey<SfPdfViewerState> key = GlobalKey();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
              onTap: () {
                key.currentState!.openBookmarkView();
              },
              child: Icon(Icons.bookmark))
        ],
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.grey,
      body: SfPdfViewerTheme(
        data: SfPdfViewerThemeData(
            backgroundColor: Colors.black, brightness: Brightness.dark),
        child: SfPdfViewer.asset(
          pdf[widget.index],
          key: key,
          scrollDirection: PdfScrollDirection.horizontal,
          pageSpacing: 8,
        ),
      ),
    );
  }
}
