import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:radio_app/constant/color.dart';

class RadioListItemCard extends StatelessWidget {
  const RadioListItemCard({
    this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 8, 16),
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
                    imageUrl: 'https://picsum.photos/seed/random_value/100',
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '【143】タイトルタイトルタイトルタイトルタイトルタイトルタイトルタイトル',
                      style: Theme.of(context).textTheme.bodyText1,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
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
              const SizedBox(width: 8),
              // IconButton(
              //   icon: Icon(Icons.play_circle_fill_rounded),
              //   onPressed: () {},
              // ),
              IconButton(
                icon: Icon(Icons.file_download),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
