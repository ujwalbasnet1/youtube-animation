import 'package:flutter/material.dart';

import '../constants.dart';
import '../model.dart';
import 'video_list_item_widget.dart';

class DetailView extends StatelessWidget {
  final VideoListItemModel model;
  final Function(DragUpdateDetails) onUpdate;
  final Function(DragEndDetails) onEnd;
  final double percent;

  const DetailView({
    Key key,
    @required this.model,
    this.onUpdate,
    this.onEnd,
    this.percent = 0,
  }) : super(key: key);

  double get backgroundOpacity {
    // TODO manage opacity not let to be 0
    double limit = backgroundOpacityDecreaseStartPercent;
    if (percent < limit) {
      print(percent);
      return 1;
    }

    return 1 - ((percent - limit) / (1 - limit));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        getVideoWidget(context),
        Opacity(
          opacity: backgroundOpacity,
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                const SizedBox(height: 16),
                Text(model.snippet.description),
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
                const SizedBox(height: 16),
                Text(model.snippet.description),
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
                const SizedBox(height: 16),
                Text(model.snippet.description),
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
                const SizedBox(height: 16),
                Text(model.snippet.description),
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
                const SizedBox(height: 16),
                Text(model.snippet.description),
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
                const SizedBox(height: 16),
                Text(model.snippet.description),
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
                const SizedBox(height: 16),
                Text(model.snippet.description),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget getVideoWidget(BuildContext context) {
    double _decreasePercent = 1;
    _decreasePercent = (1 - percent);

    double height = finalSize + (initialSize - finalSize) * _decreasePercent;
    if (height <= finalSize) height = finalSize;

    double spaceHeight = initialSize - height;
    spaceHeight = (spaceHeight <= 0) ? 0 : spaceHeight;

    double widthPercent = 1;

    if (percent > widthDecreaseStartPercent) {
      widthPercent = (1 - percent) / (1 - widthDecreaseStartPercent);
    }

    double initialWidth = MediaQuery.of(context).size.width;
    double width =
        finalWidthSize + (initialWidth - finalWidthSize) * widthPercent;

    return GestureDetector(
      onVerticalDragEnd: onEnd,
      onVerticalDragUpdate: onUpdate,
      child: Container(
        color: Colors.transparent,
        // padding: EdgeInsets.only(
        //   top: spaceHeight,
        // ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _item(width, height),
            Expanded(
              child: Container(
                color: Colors.red.withOpacity(0.5),
                height: height,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _item(double width, double height) {
    return Container(
      height: height,
      width: width,
      color: Colors.orangeAccent,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child:
            // Container(
            //   height: 200,
            //   width: MediaQuery.of(context).size.width,
            //   color: Colors.teal,
            // ),
            Image.network(
          model.snippet.thumbnails.mediumThumb.url,
          height: height,
          width: width,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
