import 'package:flutter/material.dart';
import 'package:youtube/detail/detail_view.dart';

import '../constants.dart';
import '../model.dart';
import 'video_list_item_widget.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  VideoListItemModel selected;

  double yPosition = 0;
  double topLimit = 0;
  double bottomLimit = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _getDetail(context);

    super.didChangeDependencies();
  }

  Size screenSize;

  _getDetail(context) {
    final fullScreenSize = MediaQuery.of(context).size;

    screenSize = Size(
      fullScreenSize.width,
      fullScreenSize.height,
    );

    bottomLimit = screenSize.height - finalSize;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          homeView(),
          if (selected != null)
            Positioned(
              top: yPosition,
              right: 0,
              left: 0,
              bottom: 0,
              child: DetailView(
                percent: getPercent(),
                model: selected,
                onUpdate: onUpdate,
                onEnd: onEnd,
              ),
            ),
        ],
      ),
    );
  }

  double getPercent() {
    double percent = yPosition / bottomLimit;
    return percent;
  }

  double velocityBreakThrough = 1500;

  onEnd(DragEndDetails detail) {
    if (yPosition > screenSize.height * 0.65) {
      yPosition = bottomLimit;
    } else if (yPosition < screenSize.height * 0.1) {
      yPosition = topLimit;
    } else {
      if (detail.primaryVelocity.isNegative) {
        if (detail.primaryVelocity < -velocityBreakThrough) {
          yPosition = topLimit;
        } else {
          yPosition = bottomLimit;
        }
      } else {
        if (detail.primaryVelocity > velocityBreakThrough) {
          yPosition = bottomLimit;
        } else {
          yPosition = topLimit;
        }
      }
    }

    // if (yPosition < (screenSize.height * 0.5)) {
    //   yPosition = topLimit;
    // } else {
    //   yPosition = bottomLimit;
    // }

    setState(() {});
  }

  onUpdate(DragUpdateDetails tapInfo) {
    yPosition += tapInfo.delta.dy * 1.2;

    yPosition = (yPosition < topLimit) ? topLimit : yPosition;
    yPosition = (yPosition > bottomLimit) ? bottomLimit : yPosition;

    setState(() {});
  }

  Widget homeView() {
    return Scaffold(
      appBar: AppBar(
        title: Text("Youtube"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                selected = data[index];
              });
            },
            child: VideoListItemWidget(
              model: data[index],
            ),
          );
        },
        separatorBuilder: (_, __) => SizedBox(height: 24),
        itemCount: data.length,
      ),
    );
  }
}
