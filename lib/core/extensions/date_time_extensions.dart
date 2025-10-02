extension DateTimeExtensions on DateTime {
  String formatDateRange(DateTime? endDate) {
    final startStr = '$month/$year';
    final endStr = endDate != null ? '${endDate.month}/${endDate.year}' : 'Actualidad';
    return '$startStr - $endStr';
  }
}