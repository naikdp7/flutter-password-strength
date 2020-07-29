/*
 * Author : Julien Scholz
 * https://github.com/Pikaju/PasswordStrength
 */
import 'dart:math';

double estimateBruteforceStrength(String password) {
  if (password.isEmpty) return 0.0;

  // Check which types of characters are used and create an opinionated bonus.
  double charsetBonus = 0.1;
  if (RegExp(
      r'(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[~!?@#$.%,^&*_-])[a-zA-Z0-9~!?@#$.%,^&*_-]{8,40}$')
      .hasMatch(password)) {
    charsetBonus = 1.0;
  } else {
    charsetBonus = 0.1;
  }
  return charsetBonus;
}