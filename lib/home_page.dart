import 'package:flutter/material.dart';
import 'package:harry_potter/pdf_page.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  List images = [
    "https://m.media-amazon.com/images/I/71XqqKTZz7L._AC_UF1000,1000_QL80_.jpg",
    "https://m.media-amazon.com/images/I/71DSny4NWPL._AC_UF1000,1000_QL80_.jpg",
    "https://m.media-amazon.com/images/I/714hT0XFZpL._AC_UF1000,1000_QL80_.jpg",
    "https://m.media-amazon.com/images/I/71-CKpDxEYL._AC_UF1000,1000_QL80_.jpg",
    "https://m.media-amazon.com/images/I/71+TMmKfv9L._AC_UF1000,1000_QL80_.jpg",
    "https://m.media-amazon.com/images/I/71HAU27ETJL._AC_UF1000,1000_QL80_.jpg",
    "https://m.media-amazon.com/images/I/51-GvIoiqYL.jpg"
  ];

  PdfViewerController controller = PdfViewerController();

  final GlobalKey<SfPdfViewerState> key = GlobalKey();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/background.jpg",
              fit: BoxFit.fill,
              filterQuality: FilterQuality.high,
              color: Colors.black26,
              colorBlendMode: BlendMode.darken),
          Align(
            alignment: Alignment.center,
            child: Wrap(
                spacing: 50,
                runSpacing: 50,
                children: List.generate(7, (index) {
                  return SizedBox(
                      height: 170,
                      width: 150,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return pdf_page(index: index);
                          }));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black87,
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: Offset(
                                      3,
                                      3,
                                    ))
                              ],
                              image: DecorationImage(
                                  image: NetworkImage(images[index]),
                                  fit: BoxFit.fill)),
                        ),
                      ));
                })),
          )
        ],
      ),
    );
  }
}
