import 'package:esame_flutter/data/category_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class CategoryListPage extends StatefulWidget {
  const CategoryListPage({super.key});

  @override
  State<CategoryListPage> createState() => _CategoryListPageState();
}

class _CategoryListPageState extends State<CategoryListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Category List"),
      ),
      body: ListView.builder(
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          final category = categoryList [index];
          return ListTile(

          );
        }
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({required this.category, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4.0, // Aggiunge un'ombra alla card
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Bordo arrotondato
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0), // Angoli arrotondati per l'immagine
          child: Image.network(
            category.,
            fit: BoxFit.cover, // Mantiene le proporzioni della foto
            height: 209.0,
          ),
        ),
      ),
    );
  }
}

