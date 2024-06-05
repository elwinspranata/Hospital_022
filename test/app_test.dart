import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_example/view_page.dart';

void main() {
  testWidgets('input page', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ViewPage(
          name: 'Elwins',
          birthplace: 'Nusa Tenggara Barat',
          birthdate: '11 Maret 2004',
          gender: 'Man',
          phonenumber: '087732920630',
          email: 'elwinpranata02@gmail.com',
          religion: 'Islam',
          job: 'Mahasiswa',
          address: 'Jalan bantul kasihan',
          polyclinic: 'AMC',
        ),
      ),
    );

    expect(find.text('Name: Elwins'), findsOneWidget);
    expect(find.text('Birth Place: Nusa Tenggara Barat'), findsOneWidget);
    expect(find.text('Birht Date: 11 Maret 2004'), findsOneWidget);
    expect(find.text('Gender: Man'), findsOneWidget);
    expect(find.text('Phone Number: 087732920630'), findsOneWidget);
    expect(find.text('Email: elwinpranata02@gmail.com'), findsOneWidget);
    expect(find.text('Religion: Islam'), findsOneWidget);
    expect(find.text('Job: Mahasiswa'), findsOneWidget);
    expect(find.text('Address: Jalan bantul kasihan'), findsOneWidget);
    expect(find.text('Polyclinic: AMC'), findsOneWidget);
  });
}