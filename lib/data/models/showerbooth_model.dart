class ShowerboothModel {
  final String boothdoor;
  final String name;

  ShowerboothModel({required this.boothdoor, required this.name});
}

List<ShowerboothModel> showerboothData = [
  ShowerboothModel(boothdoor: 'asset/image/dirtybooth.png', name: '우리집'),
  ShowerboothModel(boothdoor: 'asset/image/cleanbooth.png', name: '이화여대'),
  ShowerboothModel(boothdoor: 'asset/image/dirtybooth.png', name: '우리집'),
  ShowerboothModel(boothdoor: 'asset/image/cleanbooth.png', name: 'e팀'),
];
