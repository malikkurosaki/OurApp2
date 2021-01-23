library calendar_json;

/// A Calculator.
// class Calculator {
//   /// Returns [value] plus 1.
//   int addOne(int value) => value + 1;
// }


/// calendar json
class Calendar {
  static json(String dateTime){
    final kal = DateTime.parse(dateTime);
    final totalHari = DateTime(kal.year, kal.month + 1, 0).day;
    final Map hasil = {};
    var date = 1;
    final ls = List.generate(((kal.weekday + totalHari) / 7).ceil(), (i1) => 
      List.generate(7, (i2) => i1 == 0 && i2 < kal.weekday? 
        { 
          "type": 0,
          "date": kal.subtract(Duration(days: kal.weekday)).day +i2
         }: totalHari >= date ?
        { 
          "type": 1, 
          "date": date++ 
        }: 
        { 
          "type": 2, 
          "date": i2++
        }
      )
    );
    hasil['perMonth'] = ls.expand((element) => element).toList();
    hasil['year'] = kal.year;
    hasil['month'] = kal.month;
    hasil['day'] = kal.day;
    hasil['perWeek'] = ls;
    return hasil;
  }
}