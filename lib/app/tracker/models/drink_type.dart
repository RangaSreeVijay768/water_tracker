class DrinkType {
  int quantity;
  String drinkType;
  String humanReadable;
  String image;
  String notificationTitle;
  String notificationDescription;
  String actionButtonText;
  String actionButtonKey;

  DrinkType(
      {required this.quantity,
      required this.drinkType,
      required this.humanReadable,
      required this.image,
      required this.notificationTitle,
      required this.notificationDescription,
      required this.actionButtonText,
      required this.actionButtonKey});

  static final availableDrinkTypes = [
    DrinkType(
        quantity: 250,
        drinkType: 'WATER',
        humanReadable: 'Water',
        image: 'images/water.png',
        notificationTitle: 'hi buddy, it\'s time to take your sip again.🥤',
        notificationDescription:
            ' Update in the app quickly after enjoying your drink.',
        actionButtonText: 'Add Glass',
        actionButtonKey: 'drink-water-add-glass'),
    DrinkType(
        quantity: 150,
        drinkType: 'TEA',
        humanReadable: 'Tea',
        image: 'images/tea.png',
        notificationTitle: 'Ting ting. A cup of tea is waiting. ☕',
        notificationDescription: ' Add the cup in the app after shipping.',
        actionButtonText: 'Add cup',
        actionButtonKey: 'drink-water-add-tea'),
    DrinkType(
        quantity: 150,
        drinkType: 'COFFEE',
        humanReadable: 'Coffee',
        image: 'images/coffee.png',
        notificationTitle:
            'Finally, it’s time to grab your coffee mug. Time to boost your energy.☕',
        notificationDescription:
            'Don\'t forget to add on your cups in the app after boosting energy.',
        actionButtonText: 'Add cup',
        actionButtonKey: 'drink-water-add-coffee'),
    DrinkType(
        quantity: 150,
        drinkType: 'JUICE',
        humanReadable: 'Juice',
        image: 'images/juice2.png',
        notificationTitle: 'Time for a Power sip, Means milk time, grab fast.',
        notificationDescription: 'Add on the cups in the app to feel great.',
        actionButtonText: 'Add cup',
        actionButtonKey: 'drink-water-add-juice'),
    DrinkType(
        quantity: 150,
        drinkType: 'MILK',
        humanReadable: 'Milk',
        image: 'images/milk2.png',
        notificationTitle:
            'Tadah!!! Juice time. Quench your thirst, Work can wait, grab your juice first',
        notificationDescription: 'Keep on adding every glass in the app.',
        actionButtonText: 'Add cup',
        actionButtonKey: 'drink-water-add-milk'),
  ];

  static final configurableDrinkTypes = List.of(availableDrinkTypes)
    ..retainWhere((element) => element.drinkType != 'WATER');

  static DrinkType findByDrinkType(String drinkType) {
    return availableDrinkTypes
        .firstWhere((element) => element.drinkType == drinkType);
  }

  static DrinkType findByActionButtonKey(String actionButtonKey) {
    return availableDrinkTypes.firstWhere((element) => element.actionButtonKey
        .toUpperCase()
        .contains(actionButtonKey.toUpperCase()));
  }
}
