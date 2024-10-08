import 'package:boilerplate/core/keys/app_keys.dart';
import 'package:boilerplate/core/spacings/app_spacing.dart';
import 'package:boilerplate/generated/l10n.dart';
import 'package:boilerplate/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const Key(WidgetKeys.homeScaffoldKey),
      appBar: AppBar(
        title: Text(S.of(context).home),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text(S.of(context).setting),
              onPressed: () {
                context.push(AppRouter.settingPath);
              },
            )
          ],
        ),
      ),
    );
  }
}
