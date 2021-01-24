import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:radio_app/constant/color.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen();

  @override
  Widget build(BuildContext context) {
    return const _PlayerScreen();
  }
}

class _PlayerScreen extends StatelessWidget {
  const _PlayerScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          icon: const Icon(Icons.keyboard_arrow_down),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Card(
        clipBehavior: Clip.antiAlias,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 16),
              Container(
                width: 64,
                height: 3,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(2),
                    )),
              ),
              const SizedBox(height: 32),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AspectRatio(
                        aspectRatio: 3 / 2,
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(16),
                            ),
                          ),
                          child: CachedNetworkImage(
                            height: 100,
                            fit: BoxFit.cover,
                            placeholder: (context, url) => Container(
                              color: Colors.blueGrey[100],
                            ),
                            imageUrl:
                                'https://picsum.photos/seed/random_value/200',
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            '【143】タイトルタイトルタイトルタイトルタイトルタイトルタイトルタイトル',
                            style:
                                Theme.of(context).textTheme.subtitle1.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'シリーズ名~~~',
                            style: Theme.of(context).textTheme.caption,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Slider(
                            activeColor: AppColors.primaryColor,
                            inactiveColor:
                                AppColors.primaryColor.withOpacity(0.3),
                            value: 48,
                            min: 0,
                            max: 100,
                            divisions: 100,
                            onChanged: (value) {},
                          ),
                          Text(
                            '10:43/18:30',
                            style: Theme.of(context).textTheme.caption.copyWith(
                                  fontSize: 12,
                                ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.skip_previous_rounded),
                            iconSize: 32,
                            onPressed: () {},
                          ),
                          const SizedBox(width: 32),
                          FloatingActionButton(
                            child: const Icon(
                              Icons.play_arrow_rounded,
                              color: Colors.white,
                            ),
                            backgroundColor: AppColors.primaryColor,
                            onPressed: () {},
                          ),
                          const SizedBox(width: 32),
                          IconButton(
                            icon: const Icon(Icons.skip_next_rounded),
                            iconSize: 32,
                            onPressed: () {},
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
