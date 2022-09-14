import 'package:flutter/material.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({super.key});

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  @override
  Widget build(BuildContext context) {
    print('/////// BUILD CALC PAGE');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Clase 3'),
        centerTitle: true,
      ),
      body: Center(
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          border: const TableBorder(
            horizontalInside: BorderSide(color: Colors.purple),
          ),
          columnWidths: const {
            0: FixedColumnWidth(200),
            1: FractionColumnWidth(0.2),
            2: FractionColumnWidth(0.1),
          },
          children: [
            const TableRow(
              children: [
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Text('Nombre'),
                ),
                Text('Codigo'),
                Text('Accion'),
              ],
            ),
            TableRow(
              children: [
                Text('Juan Flores Garcilazo de la vega'),
                Text('JJFF123'),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            TableRow(
              children: [
                Text('Juan Flores'),
                Text('JJFF123'),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            TableRow(
              children: [
                Text('Juan Flores'),
                Text('JJFF123'),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
