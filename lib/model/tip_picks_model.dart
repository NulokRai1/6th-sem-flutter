class TopPicksModel{
  String? url;
  String? title;
  double? rating;

  TopPicksModel({this.url, this.title,this.rating});
}

final List<TopPicksModel> topPicksList = [
  TopPicksModel(url: "https://i.ibb.co/XVYT7M7/movie1.jpg", title: 'Omg 2', rating: 8.2),
  TopPicksModel(url: "https://i.ibb.co/QCT5fMF/movie2.jpg", title: 'Barry', rating: 7.5),
  TopPicksModel(url: "https://i.ibb.co/TbJ9cwZ/movie3.jpg", title: 'Breaking Bad', rating: 9.1),
];