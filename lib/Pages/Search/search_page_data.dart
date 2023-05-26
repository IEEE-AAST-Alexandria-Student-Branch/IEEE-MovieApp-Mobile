class ChipItem {
  late String name;
  bool isInterested = false;
  ChipItem(this.name);
}

List<ChipItem> catagorieList = [
  ChipItem("Movie"),
  ChipItem("TV Shows"),
  ChipItem("K-Drama"),
  ChipItem("Anime"),
];

List<ChipItem> filterList = [
  ChipItem("Action"),
  ChipItem("Drama"),
  ChipItem("Comedy"),
  ChipItem("Horror"),
  ChipItem("Adventure"),
  ChipItem("Thriller"),
  ChipItem("Romance"),
  ChipItem("Science"),
  ChipItem("Music"),
  ChipItem("Documentry"),
  ChipItem("Crime"),
  ChipItem("Fantasy"),
  ChipItem("Mystery"),
  ChipItem("Fiction"),
  ChipItem("Animation"),
  ChipItem("War"),
  ChipItem("History"),
  ChipItem("Television"),
  ChipItem("Superheros"),
  ChipItem("Anime"),
  ChipItem("Sports"),
  ChipItem("K-Drama")
];

List<ChipItem> regionList = [
  ChipItem("All Regions"),
  ChipItem("US"),
  ChipItem("South Korea"),
  ChipItem("China"),
  ChipItem("Middle East"),
  ChipItem("European")
];

List<ChipItem> timeList = [
  ChipItem("All Periods"),
  ChipItem("2022"),
  ChipItem("2021"),
  ChipItem("2020"),
  ChipItem("2010+"),
  ChipItem("2000+"),
  ChipItem("1960+"),
];

List<ChipItem> sortList = [
  ChipItem("Popularity"),
  ChipItem("Latest Release"),
];
