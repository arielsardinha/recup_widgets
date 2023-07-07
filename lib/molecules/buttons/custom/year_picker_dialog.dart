part of 'package:recup_storybook/recup_storybook.dart';

Future<void> showYearPicker(
    {required BuildContext context,
    required ValueChanged<DateTime?> onYearSelected,
    required DateTime? dateTime}) async {
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return RecupYearPickerDialog(
        onYearSelected: onYearSelected,
        dateTime: dateTime,
      );
    },
  );
}

class RecupYearPickerDialog extends StatefulWidget {
  final ValueChanged<DateTime?> onYearSelected;
  final DateTime? dateTime;

  static bool debugMode = false;
  static double debugScreenWidth = 100;

  const RecupYearPickerDialog({
    super.key,
    required this.onYearSelected,
    required this.dateTime,
  });

  static Future<void> showYearPicker(
      {required BuildContext context,
      required ValueChanged<DateTime?> onYearSelected,
      required DateTime? dateTime}) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return RecupYearPickerDialog(
          onYearSelected: onYearSelected,
          dateTime: dateTime,
        );
      },
    );
  }

  @override
  _RecupYearPickerDialogState createState() => _RecupYearPickerDialogState();
}

class _RecupYearPickerDialogState extends State<RecupYearPickerDialog> {
  late DateTime? _selectedYear;

  @override
  void initState() {
    _selectedYear = widget.dateTime;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Selecione o ano'),
      content: SizedBox(
        width: RecupYearPickerDialog.debugMode
            ? RecupYearPickerDialog.debugScreenWidth
            : double.maxFinite,
        child: SingleChildScrollView(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 4,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            children: List<Widget>.generate(
              5,
              (index) {
                final newYear = DateTime.now().year - index;
                final newDateTime = DateTime.now().copyWith(year: newYear);
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedYear = newDateTime;
                    });
                    widget.onYearSelected(_selectedYear);
                    Navigator.of(context).maybePop();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: _selectedYear == newDateTime
                          ? Theme.of(context).primaryColor
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '${newDateTime.year}',
                      style: TextStyle(
                        fontSize: 18,
                        color: _selectedYear?.year == newDateTime.year
                            ? Theme.of(context).colorScheme.primary
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
              _selectedYear = null;
            });
            widget.onYearSelected(_selectedYear);
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
