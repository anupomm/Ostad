/// Author: Anupom Roy; anupomhstu@gmail.com

void main() {
  List<String> phoneNumbers = [
    '+88',
    '01719364650',
    '01833541174',
    '01944245921',
    '01712345678',
  ];

  String countryCode = '+88';
  int countryCodeIndex = phoneNumbers.indexOf(countryCode);

  if (countryCodeIndex != -1) {
    phoneNumbers.removeAt(countryCodeIndex);
  }

  for (int i = 0; i < phoneNumbers.length; i++) {
    print(countryCode + phoneNumbers[i]);
  }
}
