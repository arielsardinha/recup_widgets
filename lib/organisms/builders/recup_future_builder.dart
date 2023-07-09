part of 'package:recup_storybook/recup_storybook.dart';

class RecupFutureBuilder<T> extends StatelessWidget {
  final Future<T>? future;
  final Widget? childErro, childLoad;
  final Widget Function(BuildContext, T) builder;

  const RecupFutureBuilder(
      {super.key,
      required this.future,
      required this.builder,
      this.childErro,
      this.childLoad});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<T>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final data = snapshot.data!;
          return builder(context, data);
        } else if (snapshot.hasError) {
          return childErro ??
              Center(
                child: Text("${snapshot.error}"),
              );
        }
        return childLoad ??
            const Center(child: CircularProgressIndicator.adaptive());
      },
    );
  }
}
