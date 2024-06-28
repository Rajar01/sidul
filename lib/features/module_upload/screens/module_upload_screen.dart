import 'dart:io';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModuleUploadScreen extends StatefulWidget {
  const ModuleUploadScreen({super.key});

  @override
  State<ModuleUploadScreen> createState() => _ModuleUploadScreenState();
}

class _ModuleUploadScreenState extends State<ModuleUploadScreen> {
  final isFileUploaded = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pengunggahan Modul"),
        scrolledUnderElevation: 0,
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () {},
                child: const Text("Batal"),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: FilledButton(
                onPressed: () {},
                child: const Text("Unggah"),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Judul Modul"),
                ),
              ),
              const SizedBox(height: 12),
              DropdownSearch<String>(
                popupProps: const PopupProps.menu(
                  showSelectedItems: false,
                  showSearchBox: true,
                ),
                items: ["Brazil", "Italia", "Tunisia", 'Canada'],
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: const InputDecoration(
                    labelText: "Kategori",
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 20,
                    ),
                  ),
                  baseStyle: theme.textTheme.bodyLarge,
                ),
              ),
              const SizedBox(height: 12),
              DropdownSearch<String>(
                popupProps: const PopupProps.menu(
                  showSelectedItems: false,
                  showSearchBox: true,
                ),
                items: ["Brazil", "Italia", "Tunisia", 'Canada'],
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: const InputDecoration(
                    labelText: "Bahasa",
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 20,
                    ),
                  ),
                  baseStyle: theme.textTheme.bodyLarge,
                ),
              ),
              const SizedBox(height: 12),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Jumlah Halaman"),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 132,
                child: TextFormField(
                  maxLines: 10,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Deskripsi Singkat Modul"),
                    alignLabelWithHint: true,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              isFileUploaded ? Container(
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(4),
                ),
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Icon(
                      Icons.file_copy,
                      size: 48,
                      color: theme.colorScheme.primary,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Valorant Guide to Radiant",
                            style: theme.textTheme.titleSmall,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          const Text("Ukuran 1.4 MB"),
                        ],
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Icon(Icons.more_vert),
                  ],
                ),
              ) :
              GestureDetector(
                onTap: () async {
                  FilePickerResult? result =
                  await FilePicker.platform.pickFiles();

                  if (result != null) {
                    // File file = File(result.files.single.path!);
                    // print(file);
                  } else {
                    // User canceled the picker
                  }
                },
                child: Container(
                  height: 148,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.upload_file_rounded,
                        size: 40,
                        color: theme.colorScheme.primary,
                      ),
                      const SizedBox(height: 4),
                      const Text("Pilih modul yang akan diunggah"),
                      const SizedBox(height: 4),
                      const Text("format pdf"),
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
