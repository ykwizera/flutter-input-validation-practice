
String? validateName(String? value) {
  if (value == null || value.isEmpty) {
    return 'Name is required';
  }
  if (value.length < 2) {
    return 'Name must be at least 2 characters long';
  }
  if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
    return 'Name can only contain letters and spaces';
  }
  return null;
}

String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Email is required';
  }
  if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
    return 'Please enter a valid email address';
  }
  return null;
}

String? validatePhone(String? value) {
  if (value == null || value.isEmpty) {
    return 'Phone number is required';
  }
  if (!RegExp(r'^\d{10}$').hasMatch(value)) {
    return 'Please enter a valid 10-digit phone number';
  }
  return null;
}

String? validateStreetAddress(String? value) {
  if (value == null || value.isEmpty) {
    return 'Street address is required';
  }
  if (value.length < 5) {
    return 'Please enter a valid street address';
  }
  return null;
}

String? validateCity(String? value) {
  if (value == null || value.isEmpty) {
    return 'City is required';
  }
  if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
    return 'City can only contain letters and spaces';
  }
  return null;
}

String? validateZipCode(String? value) {
  if (value == null || value.isEmpty) {
    return 'ZIP code is required';
  }
  if (!RegExp(r'^\d{5}(-\d{4})?$').hasMatch(value)) {
    return 'Please enter a valid ZIP code (12345 or 12345-6789)';
  }
  return null;
}