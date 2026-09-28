import 'package:flutter/material.dart';
import 'Models/bookModels.dart';

class DetailPage extends StatelessWidget {
  final BookModel book;

  const DetailPage({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title), // AppBar menampilkan judul buku
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                book.imageUrl,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              book.title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              "Penulis: ${book.author} | Tahun: ${book.year}",
              style: TextStyle(color: Colors.grey[700]),
            ),
            const SizedBox(height: 10),
            Text("Genre: ${book.genre}"),
            Text("Penerbit: ${book.publisher}"),
            Text("Jumlah Halaman: ${book.pages}"),
            Text("Rating: ⭐ ${book.rating}"),
            const SizedBox(height: 16),
            const Text(
              "Deskripsi / Sinopsis:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(book.description),
          ],
        ),
      ),
    );
  }
}