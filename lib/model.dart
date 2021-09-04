import 'data.dart';

class VideoListItemModels {
  List<VideoListItemModel> items;

  VideoListItemModels({this.items});

  VideoListItemModels.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items.add(new VideoListItemModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

List<VideoListItemModel> data = VideoListItemModels.fromJson(dataJSON).items;

class VideoListItemModel {
  String kind;
  String etag;
  Id id;
  Snippet snippet;

  VideoListItemModel({this.kind, this.etag, this.id, this.snippet});

  VideoListItemModel.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    etag = json['etag'];
    id = json['id'] != null ? new Id.fromJson(json['id']) : null;
    snippet =
        json['snippet'] != null ? new Snippet.fromJson(json['snippet']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kind'] = this.kind;
    data['etag'] = this.etag;
    if (this.id != null) {
      data['id'] = this.id.toJson();
    }
    if (this.snippet != null) {
      data['snippet'] = this.snippet.toJson();
    }
    return data;
  }
}

class Id {
  String kind;
  String videoId;

  Id({this.kind, this.videoId});

  Id.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    videoId = json['videoId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kind'] = this.kind;
    data['videoId'] = this.videoId;
    return data;
  }
}

class Snippet {
  String publishedAt;
  String channelId;
  String title;
  String description;
  Thumbnails thumbnails;
  String channelTitle;
  String liveBroadcastContent;

  Snippet(
      {this.publishedAt,
      this.channelId,
      this.title,
      this.description,
      this.thumbnails,
      this.channelTitle,
      this.liveBroadcastContent});

  Snippet.fromJson(Map<String, dynamic> json) {
    publishedAt = json['publishedAt'];
    channelId = json['channelId'];
    title = json['title'];
    description = json['description'];
    thumbnails = json['thumbnails'] != null
        ? new Thumbnails.fromJson(json['thumbnails'])
        : null;
    channelTitle = json['channelTitle'];
    liveBroadcastContent = json['liveBroadcastContent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['publishedAt'] = this.publishedAt;
    data['channelId'] = this.channelId;
    data['title'] = this.title;
    data['description'] = this.description;
    if (this.thumbnails != null) {
      data['thumbnails'] = this.thumbnails.toJson();
    }
    data['channelTitle'] = this.channelTitle;
    data['liveBroadcastContent'] = this.liveBroadcastContent;
    return data;
  }
}

class Thumbnails {
  ThumbnailModel defaultThumb;
  ThumbnailModel mediumThumb;
  ThumbnailModel highThumb;

  Thumbnails({this.defaultThumb, this.mediumThumb, this.highThumb});

  Thumbnails.fromJson(Map<String, dynamic> json) {
    defaultThumb = json['default'] != null
        ? new ThumbnailModel.fromJson(json['default'])
        : null;
    mediumThumb = json['medium'] != null
        ? new ThumbnailModel.fromJson(json['medium'])
        : null;
    highThumb =
        json['high'] != null ? new ThumbnailModel.fromJson(json['high']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.defaultThumb != null) {
      data['default'] = this.defaultThumb.toJson();
    }
    if (this.mediumThumb != null) {
      data['medium'] = this.mediumThumb.toJson();
    }
    if (this.highThumb != null) {
      data['high'] = this.highThumb.toJson();
    }
    return data;
  }
}

class ThumbnailModel {
  String url;
  int width;
  int height;

  ThumbnailModel({this.url, this.width, this.height});

  ThumbnailModel.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['width'] = this.width;
    data['height'] = this.height;
    return data;
  }
}
