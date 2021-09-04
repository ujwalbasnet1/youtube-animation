import 'package:flutter/material.dart';

import '../model.dart';

class VideoListItemWidget extends StatelessWidget {
  final VideoListItemModel model;

  const VideoListItemWidget({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child:
                // Container(
                //   height: 200,
                //   width: MediaQuery.of(context).size.width,
                //   color: Colors.teal,
                // ),
                Image.network(
              model.snippet.thumbnails.mediumThumb.url,
              height: 200,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            model.snippet.title,
            style: Theme.of(context).textTheme.subtitle2.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(
                model.snippet.channelTitle,
                style: Theme.of(context).textTheme.subtitle2.copyWith(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
              ),
              const SizedBox(width: 6),
              Text(
                format(DateTime.parse(model.snippet.publishedAt)),
                style: Theme.of(context).textTheme.subtitle2.copyWith(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String format(DateTime time) {
    return "${time.year}-${(time.month <= 9) ? "0${time.month}" : time.month}-${(time.day <= 9) ? "0${time.day}" : time.day}";
  }
}
