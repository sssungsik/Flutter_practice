void main() {
  final now = DateTime.now();

  final data1 = DateTime(
    1992,
    2,
    1,
  );

  final date = DateTime.utc(
    1997,
    2,
    1,
  );

  
  final days1 = Duration(
    days: 1,
  );

  print(date);
  print(now);
  print(now.toUtc().toLocal());
  print(data1.isBefore(now));
  print('--------------------');
  print(now.subtract(days1));

}