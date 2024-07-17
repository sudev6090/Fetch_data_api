import 'package:fetch_data_api/controller/provider_function.dart';
import 'package:fetch_data_api/view/male_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProviderFunctions>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            ElevatedButton(
                onPressed: () {
                  provider.fetchMaleUsers();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MaleScreen(),
                    ),
                  );
                },
                child: const Text('Male Users'))
          ],
        ),
      ),
    );
  }
}
