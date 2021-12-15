class HomeModel{
  String title;
  String img;
  String price;

  HomeModel({required this.img, required this.price, required this.title});
}

List<HomeModel> homeItemList=[

  HomeModel(
    img:"assets/images/orangeshoe.png",
     title: "Orange shoes", price: "100" 
    ),
     HomeModel(
    img:"assets/images/orangeshoe.png",
     title: "yello shoes", price: "100" 
    ),
     HomeModel(
    img:"assets/images/orangeshoe.png",
     title: "black shoes", price: "100" 
    ),
];
