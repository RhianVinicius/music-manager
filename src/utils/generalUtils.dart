String line(int length, String colorcode, {String character="="}) {
  return '\x1B[${colorcode}m${character*length}\x1B[m';
}


String removeDiaticrits(String text) {
  const diaticrits = 'áàãâäéèêëíìîïóòõôöúùûüçÁÀÃÂÄÉÈÊËÍÌÎÏÓÒÕÔÖÚÙÛÜÇ';
  const normal = 'aaaaaeeeeiiiiooooouuuucAAAAAEEEEIIIIOOOOOUUUUC';

  for (int i = 0; i < diaticrits.length; i++) {
    text = text.replaceAll(diaticrits[i], normal[i]);
  }
  return text;
}
