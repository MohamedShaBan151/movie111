<<<<<<< HEAD
=======

>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
class MovieAddedToFavResponse {
  String? message;
  Data? data;

  MovieAddedToFavResponse({this.message, this.data});

  MovieAddedToFavResponse.fromJson(Map<String, dynamic> json) {
<<<<<<< HEAD
    if (json["message"] is String) {
      message = json["message"];
    }
    if (json["data"] is Map) {
=======
    if(json["message"] is String) {
      message = json["message"];
    }
    if(json["data"] is Map) {
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
      data = json["data"] == null ? null : Data.fromJson(json["data"]);
    }
  }

<<<<<<< HEAD
  static List<MovieAddedToFavResponse> fromList(
      List<Map<String, dynamic>> list) {
=======
  static List<MovieAddedToFavResponse> fromList(List<Map<String, dynamic>> list) {
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
    return list.map(MovieAddedToFavResponse.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["message"] = message;
<<<<<<< HEAD
    if (data != null) {
=======
    if(data != null) {
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
      _data["data"] = data?.toJson();
    }
    return _data;
  }
}

class Data {
  String? movieId;
  String? name;
  double? rating;
  String? imageUrl;
  String? year;

  Data({this.movieId, this.name, this.rating, this.imageUrl, this.year});

  Data.fromJson(Map<String, dynamic> json) {
<<<<<<< HEAD
    if (json["movieId"] is String) {
      movieId = json["movieId"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["rating"] is double) {
      rating = json["rating"];
    }
    if (json["imageURL"] is String) {
      imageUrl = json["imageURL"];
    }
    if (json["year"] is String) {
=======
    if(json["movieId"] is String) {
      movieId = json["movieId"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["rating"] is double) {
      rating = json["rating"];
    }
    if(json["imageURL"] is String) {
      imageUrl = json["imageURL"];
    }
    if(json["year"] is String) {
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
      year = json["year"];
    }
  }

  static List<Data> fromList(List<Map<String, dynamic>> list) {
    return list.map(Data.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["movieId"] = movieId;
    _data["name"] = name;
    _data["rating"] = rating;
    _data["imageURL"] = imageUrl;
    _data["year"] = year;
    return _data;
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
