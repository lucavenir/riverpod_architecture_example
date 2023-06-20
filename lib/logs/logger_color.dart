enum LoggerColor {
  black('30m'),
  red('31m'),
  green('32m'),
  yellow('33m'),
  blue('34m'),
  magenta('35m'),
  cyan('36m'),
  white('37m');

  const LoggerColor(this.code);
  final String code;

  String paint(String input) => '\x1B[$code$input\x1B[0m';
}
