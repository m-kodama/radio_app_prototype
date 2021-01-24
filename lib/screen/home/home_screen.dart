import 'package:flutter/material.dart';
import 'package:radio_app/screen/player/player_screen.dart';
import 'package:radio_app/widget/mini_player.dart';
import 'package:radio_app/widget/radio_list_item_card.dart';
import 'package:radio_app/widget/radio_series_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    return const _HomeScreen();
  }
}

class _HomeScreen extends StatelessWidget {
  const _HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          icon: const Icon(Icons.menu_rounded),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.download_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                // floating: true,
                // snap: true,
                // expandedHeight: 88,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(32),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: const [
                          RadioSeriesCard(
                            width: 88 * 1.5,
                            height: 88,
                          ),
                          RadioSeriesCard(
                            width: 88 * 1.5,
                            height: 88,
                          ),
                          RadioSeriesCard(
                            width: 88 * 1.5,
                            height: 88,
                          ),
                          RadioSeriesCard(
                            width: 88 * 1.5,
                            height: 88,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SliverAppBar(
                floating: true,
                pinned: true,
                snap: true,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                centerTitle: false,
                title: Text(
                  'Radio List',
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              SliverFixedExtentList(
                itemExtent: 96,
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                      child: RadioListItemCard(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const PlayerScreen(),
                              fullscreenDialog: true,
                            ),
                          );
                        },
                      ),
                    );
                  },
                  childCount: 20,
                ),
              ),
              const SliverPadding(
                padding: EdgeInsets.only(bottom: 148),
              ),
            ],
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: MiniPlayer(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const PlayerScreen(),
                      fullscreenDialog: true,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
