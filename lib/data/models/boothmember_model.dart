class BoothMemberModel {
  final String name;
  final String time;
  final bool isSuccess;
  final String image;

  BoothMemberModel({
    required this.name,
    required this.time,
    required this.isSuccess,
    required this.image,
  });
}

final List<BoothMemberModel> boothMemberData = [
  BoothMemberModel(
    name: '초롱이',
    time: '14:32',
    isSuccess: false,
    image: 'asset/image/character.png',
  ),
  BoothMemberModel(
    name: '비실이',
    time: '12:22',
    isSuccess: true,
    image: 'asset/image/character.png',
  ),
  BoothMemberModel(
    name: '이화여대생1',
    time: '14:32',
    isSuccess: true,
    image: 'asset/image/character.png',
  ),
  BoothMemberModel(
    name: '초롱이',
    time: '14:32',
    isSuccess: false,
    image: 'asset/image/character.png',
  ),
  BoothMemberModel(
    name: '비실이',
    time: '12:22',
    isSuccess: true,
    image: 'asset/image/character.png',
  ),
];
