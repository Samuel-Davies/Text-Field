import 'package:flutter/material.dart';
import '../app_text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = 'Name to be displayed here';
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  @override
  // the initState is for initializing some values
  void initState() {
    super.initState();
    //nameController.text = 'Brazil';
  }

  // while tyhe dispose is for disposing unwanted values
  // very important
  @override
  void dispose() {
    nameController.dispose();
    numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextFields'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppTextField(
                controller: nameController,
                hint: 'Please enter your name',
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 20,
              ),
              AppTextField(
                controller: numberController,
                hint: 'Number',
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    name = '${nameController.text} - ${numberController.text}';
                  });
                },
                child: const Text('Submit'),
              ),
              Text(name)
            ],
          ),
        ),
      ),
    );
  }
}
