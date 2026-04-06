// lib/widgets/who_field.dart

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WhoField extends StatefulWidget {
  final ValueChanged<String>? onChanged;

  const WhoField({super.key, this.onChanged});

  @override
  State<WhoField> createState() => _WhoFieldState();
}

class _WhoFieldState extends State<WhoField> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _digits = [];

  String _formatPhone(List<String> d) {
    if (d.isEmpty) return '';
    List<String> digits = List.from(d);
    if (digits[0] == '8') digits[0] = '7';
    final s = digits.take(11).join();
    String r = '';
    for (int i = 0; i < s.length; i++) {
      if (i == 0) {
        r += '+${s[i]}';
      } else if (i == 1) {
        r += ' (${s[i]}';
      } else if (i == 4) {
        r += ') ${s[i]}';
      } else if (i == 7) {
        r += ' ${s[i]}';
      } else if (i == 9) {
        r += ' ${s[i]}';
      } else {
        r += s[i];
      }
    }
    return r;
  }

  void _render() {
    final formatted = _formatPhone(_digits);
    _controller.value = TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
    widget.onChanged?.call(_digits.join());
  }

  void _showPopup() {
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (_) => const AlertDialog(
        content: Text(
          'вводите только цифры',
          style: TextStyle(color: Color(0xFFAAAAAA), fontSize: 18),
        ),
      ),
    );
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted && Navigator.canPop(context)) Navigator.pop(context);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240,
      height: 50,
      child: KeyboardListener(
        focusNode: FocusNode(),
        onKeyEvent: (event) {
          if (event is KeyDownEvent) {
            final key = event.logicalKey.keyLabel;
            if (key == 'Backspace') {
              if (_digits.isNotEmpty) {
                _digits.removeLast();
                _render();
              }
              return;
            }
            if (key.length == 1) {
              if (!RegExp(r'\d').hasMatch(key)) {
                _showPopup();
                return;
              }
              if (_digits.length < 11) {
                _digits.add(key);
                _render();
              }
            }
          }
        },
        child: TextField(
          controller: _controller,
          keyboardType: TextInputType.phone,
          style: const TextStyle(fontSize: 24),
          decoration: InputDecoration(
            hintText: '+7 (000) 000 00 00',
            hintStyle: const TextStyle(
              color: Color(0xFFAAAAAA),
              fontSize: 24,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Color(0xFF378ADD), width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Color(0xFF378ADD), width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Color(0xFF378ADD), width: 2),
            ),
          ),
        ),
      ),
    );
  }
}