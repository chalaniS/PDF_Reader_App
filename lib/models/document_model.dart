class Document {
  String? doc_title;
  String? doc_url;
  String? doc_date;
  int? page_num;

  Document(this.doc_title, this.doc_url, this.doc_date, this.page_num);

  static List<Document> doc_list = [
    Document("Artificial Intelligence 1",
        "https://arxiv.org/pdf/1804.01396.pdf", "8-08-2015", 11),
    Document("Artificial Intelligence 2",
        "https://arxiv.org/pdf/1804.01396.pdf", "8-08-2015", 11),
    Document("Artificial Intelligence 3",
        "https://arxiv.org/pdf/1804.01396.pdf", "8-08-2015", 11),
    Document("Artificial Intelligence 4",
        "https://arxiv.org/pdf/1804.01396.pdf", "8-08-2015", 11),
  ];
}
