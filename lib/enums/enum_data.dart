enum Interest {
  men,
  women,
  seriousRelationship,
  friendship,
}

enum InterestIn {
  men,
  women,
}

enum Category {
  travel('Travel'),
  culture('Culture'),
  casualDating('Casual Dating');

  const Category(this.title);
  final String title;
}

enum CategoryIcon {
  travel('assets/png/tree.png'),
  casualDating('assets/png/casual_dating.png');

  const CategoryIcon(this.iconPath);
  final String iconPath;
}
