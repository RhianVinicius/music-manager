String line(int length, String colorcode, {String character="="}) {
  return '\x1B[${colorcode}m${character*length}\x1B[m';
}