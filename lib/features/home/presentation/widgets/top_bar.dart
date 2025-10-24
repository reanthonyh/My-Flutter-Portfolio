import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions/size_device_extensions.dart';
import 'package:my_portfolio/l10n/l10n.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key, required this.goHomeContent, this.isAvailable = true});

  final VoidCallback goHomeContent;
  final bool isAvailable;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.sizeOf(context);

    return SizedBox(
      height: 100,
      child: Row(
        children: [
          const Expanded(
            child: _Availability(
              // TODO: Replace the true value for a state provider
              isAvailable: true,
            ),
          ),
          Expanded(
            flex: deviceSize.isWider
                ? 3
                : deviceSize.isNarrow
                ? 2
                : 1,
            child: GestureDetector(
              onTap: goHomeContent,
              child: const FlutterLogo(size: 65),
            ),
          ),
          const Expanded(child: _FolioInfo()),
        ],
      ),
    );
  }
}

class _FolioInfo extends StatelessWidget {
  const _FolioInfo();

  @override
  Widget build(BuildContext context) {
    final intl = AppLocalizations.of(context)!;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(intl.portfolio, textAlign: TextAlign.end),
        const Text('2025', textAlign: TextAlign.end),
      ],
    );
  }
}

class _Availability extends StatelessWidget {
  const _Availability({required this.isAvailable});

  final bool isAvailable;

  @override
  Widget build(BuildContext context) {
    final intl = AppLocalizations.of(context)!;

    return Row(
      spacing: 4,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.circle, color: isAvailable ? Colors.green : Colors.red, size: 20),
        Expanded(
          child: Text(
            isAvailable ? intl.availability_positive : intl.availability_negative,
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
