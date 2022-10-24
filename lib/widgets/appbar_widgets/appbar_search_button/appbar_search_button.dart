import 'package:trdl_tool/all_imports.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showSearch(
          context: context,
          delegate: MySearchDelegate(),
        );
      },
      icon: const Icon(Icons.search),
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  /*CAN BE FOUND IN ALL_SEARCH_STRINGS.DART*/
  List<String> searchResults = searchStringsList;

  @override
  String get searchFieldLabel => 'Zoek op trefwoord';

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = '';
          }
        },
      ),
    ];
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResult) {
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
            showResults(context);
          },
        );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final String namedRoute = query;

    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        await Navigator.pushReplacementNamed(
          context,
          namedRoute,
        );
      },
    );
    return const Center();
  }
}