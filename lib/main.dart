import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.g.dart';

void main() {
  runApp(
    const ProviderScope(
      child: DRApp(),
    ),
  );
}

class DRApp extends ConsumerWidget {
  const DRApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exampleValue = ref.watch(exampleValueProvider);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 8.0,
            children: [
              Text(
                exampleValue,
              ),
              ElevatedButton(
                onPressed: () {
                  ref
                      .read(exampleValueProvider.notifier)
                      .update("Updated Riverpod");
                },
                child: Text("Click Me To Update"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

@riverpod
String example(Ref ref) {
  return "Hello AT";
}

@riverpod
class ExampleValue extends _$ExampleValue {
  @override
  String build() => 'Hello Riverpod';

  void update(String value) {
    state = value;
  }
}
