///
/// Copied from https://stackoverflow.com/questions/30844353/how-to-remove-diacritics-accents-from-a-string
/// (Answer from Leonardo Costa, stackoverflow.com user)
///
extension DiacriticsAwareString on String {
  static const ___diacritics = 'ÀÁÂÃÄÅàáâãäåÒÓÔÕÕÖØòóôõöøÈÉÊËĚèéêëěðČÇçčÐĎďÌÍÎÏìíîïĽľÙÚÛÜŮùúûüůŇÑñňŘřŠšŤťŸÝÿýŽž';
  static const nonDiacritics = 'AAAAAAaaaaaaOOOOOOOooooooEEEEEeeeeeeCCccDDdIIIIiiiiLlUUUUUuuuuuNNnnRrSsTtYYyyZz';

  String get withoutDiacriticalMarks => splitMapJoin('',
      onNonMatch: (char) =>
          char.isNotEmpty && ___diacritics.contains(char) ? nonDiacritics[___diacritics.indexOf(char)] : char);
}
