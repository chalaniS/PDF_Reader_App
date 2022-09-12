import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf_reader/screens/reader_screen.dart';
import '../models/document_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          title: const Text("PDF Reader"),
        ),
        body: SafeArea(
          child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recent Documents',
                    style: GoogleFonts.roboto(
                        fontSize: 28.0, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: Document.doc_list
                        .map((doc) => ListTile(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ReaderScreen(doc)));
                              },
                              title: Text(
                                doc.doc_title!,
                                style: GoogleFonts.nunito(),
                                overflow: TextOverflow.ellipsis,
                              ),
                              subtitle: Text("${doc.page_num!}Pages"),
                              trailing: Text(
                                doc.doc_date!,
                                style: GoogleFonts.nunito(color: Colors.grey),
                              ),
                              leading: const Icon(
                                Icons.picture_as_pdf,
                                color: Colors.red,
                                size: 32.0,
                              ),
                            ))
                        .toList(),
                  ),
                ],
              )),
        ));
  }
}
