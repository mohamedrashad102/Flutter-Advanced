import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// With `flutter_hooks`, you can write functional widgets in a more declarative way.
/// Extend `HookWidget` instead of `StatelessWidget`.
/// Use `useState` to manage state.
/// Use `useTextEditingController` for `TextEditingController`.
/// Use `useAnyThing` for `AnyThing`.
/// Don't worry about disposing resources, `flutter_hooks` will handle it.
class FlutterHooksDemo extends HookWidget {
  const FlutterHooksDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final focusNode = useFocusNode();
    final isVisible = useState<bool>(false);
    final controller = useTextEditingController();
    return TextField(
      focusNode: focusNode, // Pass the focusNode normally
      controller: controller, // Pass the controller normally
      obscureText: !isVisible.value, // Pass the value normally
      decoration: InputDecoration(
        suffixIcon: IconButton(
          // Toggle the visibility automatically without using setState
          onPressed: () => isVisible.value = !isVisible.value,
          icon: Icon(
            isVisible.value ? Icons.visibility : Icons.visibility_off,
          ),
        ),
      ),
    );
  }
}
