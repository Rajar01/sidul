import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final isHaveNotification = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonIcon(),
        title: const Text("Pemberitahuan"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: isHaveNotification
            ? ListView.separated(
                itemCount: 10,
                separatorBuilder: (context, index) => const SizedBox(height: 8),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {},
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Judul Pemberitahuan",
                                style: theme.textTheme.titleMedium,
                              ),
                              Text(
                                "Baru saja",
                                style: theme.textTheme.labelSmall,
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                            "Nulla viverra sollicitudin arcu a vulputate.",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/blank_notification.png",
                    width: 260,
                    height: 168,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Kosong",
                    style: theme.textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Anda tidak mendapat pemberitahuan apa pun saat ini",
                    style: theme.textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
      ),
    );
  }
}
