import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  _CustomSearchBarState createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.grey[300],
        ),
        child: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search...',
            border: InputBorder.none,
            prefixIcon: const Icon(Icons.search),
            suffixIcon: IconButton(
              onPressed: () => _searchController.clear(),
              icon: const Icon(Icons.clear),
            ),
          ),
        ),
      ),
    );
  }
}
