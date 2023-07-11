part of 'package:recup_storybook/recup_storybook.dart';

class RecupDebugText {
  final String text;
  late final StackTrace trace;

  RecupDebugText(this.text) {
    trace = StackTrace.current;
  }
}

class RecupDebug extends StatelessWidget {

  static bool showDebugIcon = true;

  const RecupDebug({
    super.key,
    required this.text,
    required this.child,
  });

  final RecupDebugText text;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (!kDebugMode || !showDebugIcon) {
      return child;
    }

    return Stack(
      children: [
        child,
        Positioned(
          right: 0,
          child: GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return _DeubgDialog(
                    message: text.text,
                    stackTrace: text.trace,
                  );
                },
              );
            },
            child: const Icon(
              Icons.warning_amber,
              color: Colors.yellow,
            ),
          ),
        )
      ],
    );
  }
}

class _DeubgDialog extends StatelessWidget {
  const _DeubgDialog({
    required this.message,
    required this.stackTrace,
  });

  final String message;
  final StackTrace stackTrace;

  void debugPrintStack(
      {StackTrace? stackTrace, String? label, int? maxFrames}) {
    if (label != null) {
      debugPrint(label);
    }

    if (stackTrace == null) {
      stackTrace = StackTrace.current;
    } else {
      stackTrace = FlutterError.demangleStackTrace(stackTrace);
    }

    Iterable<String> lines = stackTrace.toString().trimRight().split('\n');
    if (kIsWeb && lines.isNotEmpty) {
      lines = lines.skipWhile((String line) {
        return line.contains('StackTrace.current') ||
            line.contains('dart-sdk/lib/_internal') ||
            line.contains('dart:sdk_internal');
      });
    }

    lines = lines.where((element) {
      return !element.contains('package:flutter/');
    });

    if (maxFrames != null) {
      lines = lines.take(maxFrames);
    }

    debugPrint(FlutterError.defaultStackFilter(lines).join('\n'));
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Debug Dialog',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(message),
            const SizedBox(
              height: 24,
            ),
            FilledButton(
              onPressed: () {
                debugPrintStack(stackTrace: stackTrace);
              },
              child: const Text('Print Stacktrace'),
            ),
          ],
        ),
      ),
    );
  }
}
