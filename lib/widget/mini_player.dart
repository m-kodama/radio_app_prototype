import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:radio_app/constant/color.dart';

class MiniPlayer extends StatelessWidget {
  const MiniPlayer({
    this.onTap,
  });

  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
        child: SizedBox(
          width: double.infinity,
          height: 108,
          child: Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            clipBehavior: Clip.antiAlias,
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.white38
                : Colors.black45,
            margin: const EdgeInsets.all(0),
            elevation: 0,
            child: InkWell(
              onTap: onTap,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 24, 8, 24),
                    child: Row(
                      children: [
                        AspectRatio(
                          aspectRatio: 1 / 1,
                          child: Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              placeholder: (context, url) => Container(
                                color: Colors.blueGrey[100],
                              ),
                              imageUrl:
                                  'https://picsum.photos/seed/random_value/100',
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'シリーズ名~~~',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                '【143】タイトルタイトルタイトルタイトルタイトルタイトルタイトルタイトル',
                                style: Theme.of(context).textTheme.overline,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        IconButton(
                          color: AppColors.primaryColor,
                          icon: const Icon(Icons.pause_circle_outline),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.close_rounded),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  LinearProgressIndicator(
                    minHeight: 2,
                    value: 0.6,
                    valueColor: const AlwaysStoppedAnimation<Color>(
                      AppColors.primaryColor,
                    ),
                    backgroundColor: Colors.grey[300],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
