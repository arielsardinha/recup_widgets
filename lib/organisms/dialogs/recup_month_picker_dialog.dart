part of 'package:recup_storybook/recup_storybook.dart';

Future<void> showMonthPicker({
  required BuildContext context,
  required ValueChanged<DateTime?> onMonthSelected,
  DateTime? dateTime,
}) async {
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return RecupMonthPickerDialog(
        onMonthSelected: onMonthSelected,
        dateTime: dateTime,
      );
    },
  );
}

class RecupMonthPickerDialog extends StatefulWidget {
  final ValueChanged<DateTime?> onMonthSelected;
  final DateTime? dateTime;

  const RecupMonthPickerDialog(
      {super.key, required this.onMonthSelected, this.dateTime});

  static bool debugMode = false;
  static double debugScreenWidth = 100;

  static Future<void> showMonthPicker({
    required BuildContext context,
    required ValueChanged<DateTime?> onMonthSelected,
    DateTime? dateTime,
  }) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return RecupMonthPickerDialog(
          onMonthSelected: onMonthSelected,
          dateTime: dateTime,
        );
      },
    );
  }

  @override
  _RecupMonthPickerDialogState createState() => _RecupMonthPickerDialogState();
}

class _RecupMonthPickerDialogState extends State<RecupMonthPickerDialog> {
  DateTime? _selectedMonth;

  @override
  void initState() {
    _selectedMonth = widget.dateTime;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final monthNames = [
      'Jan',
      'Fev',
      'Mar',
      'Abr',
      'Mai',
      'Jun',
      'Jul',
      'Ago',
      'Set',
      'Out',
      'Nov',
      'Dez'
    ];

    final months = List<DateTime>.generate(
        12, (i) => DateTime.now().copyWith(month: i + 1));

    return AlertDialog(
      title: const Text('Selecione o mês'),
      content: SizedBox(
        width: RecupMonthPickerDialog.debugMode
            ? RecupMonthPickerDialog.debugScreenWidth
            : double.maxFinite,
        child: SingleChildScrollView(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            children: List<Widget>.generate(
              monthNames.length,
              (index) {
                final monthName = monthNames[index];
                final dateTime = months[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedMonth = dateTime;
                    });
                    widget.onMonthSelected(_selectedMonth);
                    Navigator.of(context).maybePop();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: _selectedMonth?.month == dateTime.month
                          ? Theme.of(context).primaryColor
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      monthName,
                      softWrap: false,
                      style: TextStyle(
                        fontSize: 18,
                        color: _selectedMonth?.month == dateTime.month
                            ? Colors.white
                            : Theme.of(context).textTheme.bodySmall?.color,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
      actions: [
        RecupTextButton(
          onPressed: () {
            setState(() {
              _selectedMonth = null;
            });
            widget.onMonthSelected(_selectedMonth);
            Navigator.of(context).maybePop();
          },
          recupButtonStyle: RecupButtonStyle(
            visualDensityButton: VisualDensityButton.comfortable,
          ),
          child: const Text('Limpar'),
        ),
        RecupTextButton(
          onPressed: () => Navigator.of(context).maybePop(),
          recupButtonStyle: RecupButtonStyle(
            visualDensityButton: VisualDensityButton.comfortable,
          ),
          child: const Text('Cancelar'),
        ),
      ],
    );
  }
}
