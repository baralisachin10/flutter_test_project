import 'package:flutter/material.dart';
import '../models/student.dart';

class StudentAdd extends StatefulWidget {
  const StudentAdd({super.key});

  @override
  State<StudentAdd> createState() => _StudentAddState();
}

class _StudentAddState extends State<StudentAdd> {
  String? selectGender = 'Male';

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  //formkey
  final formKey = GlobalKey<FormState>();

  // list of students

  List<Students> studentList = [];

  //function to submit data
  void submitHandler() {
    if (formKey.currentState!.validate()) {
      return null;
    }
    Students std = Students(
      name: nameController.text,
      email: emailController.text,
      address: addressController.text,
      gender: selectGender,
      phone: phoneController.text,
    );

    studentList.add(std);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Student'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              //name
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter your name';
                  } else if (value.length < 3) {
                    return 'Enter your name more than 3 characters';
                  }
                  return null;
                },
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your name',
                ),
              ),
              const SizedBox(height: 10),

              //email
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter your email';
                  }
                  return null;
                },
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your email',
                ),
              ),
              const SizedBox(height: 10),

              //gender dropdown
              const Text('Select Your gender'),
              DropdownButton(
                value: selectGender,
                items: const [
                  DropdownMenuItem(
                    value: 'Male',
                    child: Text('Male'),
                  ),
                  DropdownMenuItem(
                    value: 'Female',
                    child: Text('Female'),
                  ),
                  DropdownMenuItem(
                    value: 'Other',
                    child: Text('Others'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    selectGender = value;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),

              //phoneNumber
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter your phone number';
                  }
                  return null;
                },
                controller: phoneController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your phone number',
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              //address
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter your address';
                  }
                  return null;
                },
                controller: addressController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your address',
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: submitHandler,
                    child: const Text('Add Student'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/studentDetails');
                    },
                    child: const Text('View Students'),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
