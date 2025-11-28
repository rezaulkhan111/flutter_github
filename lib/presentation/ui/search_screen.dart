import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_github/presentation/github_vm.dart';
import 'package:provider/provider.dart';

@Preview(name: "List Screen")
class SearchScreen extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewmodelG = Provider.of<GithubVM>(context);

    return Scaffold(
      appBar: AppBar(title: Text("GitHub Repo Search")),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: "Search Repo",
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    viewmodelG.search(controller.text);
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),

            if (viewmodelG.isLoading) CircularProgressIndicator(),
            if (viewmodelG.error != null)
              Text(viewmodelG.error!, style: TextStyle(color: Colors.red)),
            if (viewmodelG.result != null)
              Expanded(
                child: ListView.builder(
                  itemCount: viewmodelG.result!.items!.length,
                  itemBuilder: (context, index) {
                    final repo = viewmodelG.result!.items![index];
                    return ListTile(
                      title: Text(repo.fullName ?? ""),
                      subtitle: Text(repo.description ?? "No description"),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
