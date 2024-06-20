import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../localization.dart';
import 'dialog_button.dart';


class LanguageDialog extends StatelessWidget {
  const LanguageDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final lang = Provider.of<LocalizationController>(context, listen: true);
    final theme = Theme.of(context);
    final scrollController = ScrollController();
    return Dialog(
      backgroundColor: theme.colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: lang.getLangDirection() == TextDirection.ltr
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.end,
          children: [
            Text(
              lang.language.languageName,
              textAlign: lang.getLangDirection() == TextDirection.ltr
                  ? TextAlign.left
                  : TextAlign.right,
              style: theme.textTheme.titleLarge!.copyWith(
                color: theme.colorScheme.onSecondaryContainer,
              ),
            ),
            spacing(height: 5),
            Text(
              lang.language.settingsLocalization!.languageDialogDescription,
              textAlign: lang.getLangDirection() == TextDirection.ltr
                  ? TextAlign.left
                  : TextAlign.right,
              style: theme.textTheme.titleMedium!.copyWith(
                color: theme.colorScheme.outline,
              ),
            ),
            spacing(height: 24),
            Scrollbar(
              controller: scrollController,
              thumbVisibility: true,
              child: ListView.builder(
                shrinkWrap: true,
                controller: scrollController,
                itemCount: lang.getLanguagesCode().length,
                itemBuilder: (context, index) {
                  final isSelected = lang.isCurrentLanguage(lang.getLanguagesCode().keys.elementAt(index));
                  return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: DialogButton(
                    langDirection: lang.getLangDirection(),

                    isSelected: isSelected,
                    buttonText:
                    lang.getLanguagesCode().values.elementAt(index),
                    theme: theme,
                    backgroundColor: isSelected
                        ? WidgetStateProperty.all(
                        theme.colorScheme.secondaryContainer)
                        : WidgetStateProperty.all(Colors.transparent),
                    textColor:isSelected
                        ? theme.colorScheme.primary
                        : theme.colorScheme.onSurface,
                    onPressed: isSelected
                        ? () {
                      Navigator.pop(context);
                    }
                        : () {
                      lang.language = lang.getLanguageByCode(lang.getLanguagesCode().keys.elementAt(index));
                    },
                  ),
                );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  spacing({required double height}) {
    return SizedBox(height: height);
  }
}