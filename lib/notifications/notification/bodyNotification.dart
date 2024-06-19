import 'package:flutter/material.dart';

class NotificationItem {
  final String title;
  final String description;
  final String timestamp;

  NotificationItem({
    required this.title,
    required this.description,
    required this.timestamp,
  });
}

final List<NotificationItem> notifications = [
  NotificationItem(
    title: 'Judul Pemberitahuan',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra sollicitudin arcu a vulputate.',
    timestamp: 'Baru saja',
  ),
  NotificationItem(
    title: 'Judul Pemberitahuan',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra sollicitudin arcu a vulputate.',
    timestamp: 'Baru saja',
  ),
  NotificationItem(
    title: 'Judul Pemberitahuan',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra sollicitudin arcu a vulputate.',
    timestamp: 'Baru saja',
  ),
  NotificationItem(
    title: 'Judul Pemberitahuan',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra sollicitudin arcu a vulputate.',
    timestamp: 'Baru saja',
  ),
  NotificationItem(
    title: 'Judul Pemberitahuan',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra sollicitudin arcu a vulputate.',
    timestamp: 'Baru saja',
  ),
  NotificationItem(
    title: 'Judul Pemberitahuan',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra sollicitudin arcu a vulputate.',
    timestamp: 'Baru saja',
  ),
];

class bodyNotification extends StatelessWidget {
  const bodyNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            final notification = notifications[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 24.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFEAF2FF),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          notification.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          notification.timestamp,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      notification.description,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[800],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
