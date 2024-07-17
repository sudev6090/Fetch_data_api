import 'package:fetch_data_api/controller/provider_function.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MaleScreen extends StatelessWidget {
  const MaleScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProviderFunctions>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Male'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: provider.users.length,
          itemBuilder: (BuildContext context, int index) {
            final user = provider.users[index];
            final email = user.email;
            final gender = user.gender;
            final image = user.image;
            final nationality = user.nat;
            final phoneNum = user.cell;
            Color colors = Colors.blue.withOpacity(0.5);
            return Container(
              margin: const EdgeInsets.all(10),
              height: 200,
              color: colors,
              child: Row(
                children: [
                  Container(
                      height: 80,
                      margin: const EdgeInsets.only(left: 20, right: 10),
                      child: Image(
                        image: NetworkImage(image),
                        fit: BoxFit.cover,
                      )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '$user',
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Email: $email',
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Gender: $gender',
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Nationality: $nationality',
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Phone: $phoneNum',
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          provider.fetchMaleUsers();
        },
        child: const Text('Get Users'),
      ),
    );
  }
}
