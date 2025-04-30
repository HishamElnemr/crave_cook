import 'package:flutter/material.dart';

class LoadedCardContent extends StatelessWidget {
  const LoadedCardContent({
    super.key,
    this.imageUrl,
    this.title,
  });

  final String? imageUrl;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _CardImage(imageUrl: imageUrl),
          const SizedBox(width: 16),
          Expanded(
            child: _CardTexts(title: title),
          ),
        ],
      ),
    );
  }
}

class _CardImage extends StatelessWidget {
  const _CardImage({this.imageUrl});

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.network(
        imageUrl ?? '',
        width: 80,
        height: 80,
        fit: BoxFit.cover,
      ),
    );
  }
}

class _CardTexts extends StatelessWidget {
  const _CardTexts({this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? '',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        const _CardIconsRow(),
      ],
    );
  }
}

class _CardIconsRow extends StatelessWidget {
  const _CardIconsRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(Icons.access_time, size: 20, color: Colors.grey),
        SizedBox(width: 8),
        Text(
          '30 min',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
        SizedBox(width: 16),
        Icon(Icons.local_fire_department, size: 20, color: Colors.grey),
        SizedBox(width: 8),
        Text(
          '250 cal',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
