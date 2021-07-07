# example

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Usage:
`
  List<String> images = [
    'assets/midu.jpg',
    'assets/midu.jpg',
    'assets/midu.jpg',
    'assets/midu.jpg',
  ];

Padding(
              padding: const EdgeInsets.all(8.0),
              child: GroupCircleAvatar(
                radius: 40,
                images: images,
                // borderColor: Colors.purple,
                // textBackgroundColor: Colors.red,
                textItem: Text(
                  '+5',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                imageBuilder: (path) => AssetImage(path),
              ),
            ),
`
