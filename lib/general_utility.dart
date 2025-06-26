bool isValidGstin(String gstin) {
  final gstinRegex = RegExp(
    r'^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}$',
  );
  return gstinRegex.hasMatch(gstin);
}
