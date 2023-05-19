import 'package:flutter/material.dart';
import 'package:first_app_flutter/data/trending.dart';
import 'package:intl/intl.dart';

const itemSize = 105.0;

class TrendingTripsList extends StatefulWidget {
  const TrendingTripsList({super.key});

  @override
  State<TrendingTripsList> createState() => _TrendingTripsListState();
}

class _TrendingTripsListState extends State<TrendingTripsList> {
  final scrollController = ScrollController();

  void onListen() {
    setState(() {});
  }

  @override
  void initState() {
    scrollController.addListener(onListen);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.removeListener(onListen);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.5,
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverList(
                delegate: SliverChildBuilderDelegate(
              childCount: trendingtrips.length,
              (context, index) {
                // ignore: unused_local_variable
                final trendingtrip = trendingtrips[index];
                final itemPositionOffset = index * itemSize / 2;
                final difference = scrollController.offset - itemPositionOffset;
                final percent = 1 - (difference / (itemSize / 2));
                double opacity = percent;
                double scale = percent;
                if (opacity > 1.0) opacity = 1.0;
                if (opacity < 0.0) opacity = 0.0;
                if (percent > 1.0) scale = 1.0;

                return Align(
                  heightFactor: 0.7,
                  child: Opacity(
                    opacity: opacity,
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.identity()..scale(scale, 1.0),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(40.0),
                            topRight: Radius.circular(40.0)),
                        child: Card(
                            child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: itemSize,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(trendingtrip.img),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(
                                    0.2), // Ajusta la opacidad aquí (0.0 - 1.0)
                                BlendMode
                                    .darken, // Puedes cambiar el modo de fusión según tus necesidades
                              ),
                            ),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 10.0, left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  trendingtrip.title,
                                  style: const TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        )),
                      ),
                    ),
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
