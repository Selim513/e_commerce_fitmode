import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SavedItemView extends StatefulWidget {
  const SavedItemView({super.key});

  @override
  _SavedItemViewState createState() => _SavedItemViewState();
}

class _SavedItemViewState extends State<SavedItemView> {
  List<Map<String, dynamic>> savedItems = [];

  @override
  void initState() {
    super.initState();
    _fetchSavedItems();
  }

  // استرجاع العناصر المحفوظة من Supabase
  Future<void> _fetchSavedItems() async {
    final userId = Supabase.instance.client.auth.currentUser?.id;
    if (userId != null) {
      final response = await Supabase.instance.client
          .from('saved_items')
          .select()
          .eq('user_id', userId)
          .select();

      // Handle the error appropriately
      print('Error: --------------------}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Saved Items')),
      body: savedItems.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: savedItems.length,
              itemBuilder: (context, index) {
                final item = savedItems[index];
                return Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Image.network(item['image'],
                          height: 100, width: 100, fit: BoxFit.cover),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(item['title'],
                            style: const TextStyle(fontSize: 16)),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
