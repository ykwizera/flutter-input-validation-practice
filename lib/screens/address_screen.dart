
import 'package:flutter/material.dart';
import '../utils/validators.dart';

class AddressScreen extends StatefulWidget {
  final String name;
  final String email;
  final String phone;

  const AddressScreen({
    super.key,
    required this.name,
    required this.email,
    required this.phone,
  });

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  final _formKey = GlobalKey<FormState>();
  final _streetController = TextEditingController();
  final _cityController = TextEditingController();
  final _zipController = TextEditingController();

  @override
  void dispose() {
    _streetController.dispose();
    _cityController.dispose();
    _zipController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Show success dialog with all collected information
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Form Submitted'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name: ${widget.name}'),
              Text('Email: ${widget.email}'),
              Text('Phone: ${widget.phone}'),
              Text('Street: ${_streetController.text}'),
              Text('City: ${_cityController.text}'),
              Text('ZIP: ${_zipController.text}'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Address Information'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _streetController,
                decoration: const InputDecoration(
                  labelText: 'Street Address',
                  hintText: 'Enter your street address',
                ),
                validator: validateStreetAddress,
              ),
              const SizedBox(height: 16),

              TextFormField(
                controller: _cityController,
                decoration: const InputDecoration(
                  labelText: 'City',
                  hintText: 'Enter your city',
                ),
                validator: validateCity,
              ),
              const SizedBox(height: 16),

              TextFormField(
                controller: _zipController,
                decoration: const InputDecoration(
                  labelText: 'ZIP Code',
                  hintText: 'Enter your ZIP code',
                ),
                validator: validateZipCode,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 24),

              ElevatedButton(
                onPressed: _submitForm,
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
