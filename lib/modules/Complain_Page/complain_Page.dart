import 'package:flutter/material.dart';
class ComplainPage extends StatelessWidget {
   ComplainPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
   var nameController = TextEditingController();
   var emailController = TextEditingController();
   var ComplainController = TextEditingController();
   var phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,

      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                TextFormField(
            keyboardType: TextInputType.name,
            decoration:const InputDecoration(
              labelText: 'enter your name',
              ),
                  controller: nameController,

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration:const InputDecoration(
                    labelText: 'enter your email',
                  ),
                  controller: emailController,

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration:const InputDecoration(
                    labelText: 'enter your phone',
                  ),
                  controller: phoneController,

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  maxLines: 4,
                  minLines: 3,
                  decoration:const InputDecoration(
                    labelText: 'enter your Complain',
                  ),
                  controller: ComplainController,

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
