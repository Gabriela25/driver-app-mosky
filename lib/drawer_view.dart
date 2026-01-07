import 'package:client_shared/components/user_avatar_view.dart';

import 'package:client_shared/theme/theme-ride.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'package:package_info_plus/package_info_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:client_shared/config.dart';
import 'package:sms_firebase/l10n/messages.dart';
import 'config.dart';
import 'graphql/order.fragment.graphql.dart';
class DrawerView extends StatelessWidget {
  final Fragment$BasicProfile? driver;

  const DrawerView({required this.driver, super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.all(16),
      child: Column(children: [
        const SizedBox(
          height: 48,
        ),
        Row(
          children: [
            UserAvatarView(
              urlPrefix: serverUrl,
              url: driver?.media?.address,
              cornerRadius: 10,
              size: 50,
              backgroundColor: CustomTheme.primaryColors.shade300,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                driver?.firstName != null || driver?.lastName != null
                    ? "${driver?.firstName ?? " "} ${driver?.lastName ?? " "}"
                    : "-",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 32,
        ),
        if (driver?.isWalletHidden == false)
          ListTile(
            iconColor: CustomTheme.primaryColors.shade800,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            leading: const Icon(Ionicons.bar_chart),
            minLeadingWidth: 20.0,
            title: Text(
              S.of(context).menu_earnings,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            onTap: () {
              Navigator.pushNamed(context, 'earnings');
            },
          ),
        ListTile(
          iconColor: CustomTheme.primaryColors.shade800,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          leading: const Icon(Ionicons.person),
          minLeadingWidth: 20.0,
          title: Text(
            S.of(context).menu_profile,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          onTap: () {
            Navigator.pushNamed(context, 'profile');
          },
        ),
        ListTile(
          iconColor: CustomTheme.primaryColors.shade800,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          leading: const Icon(Ionicons.notifications),
          minLeadingWidth: 20.0,
          title: Text(
            S.of(context).menu_announcements,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          onTap: () {
            Navigator.pushNamed(context, 'announcements');
          },
        ),
        /*if (driver?.isWalletHidden == false)
          ListTile(
            iconColor: CustomTheme.primaryColors.shade800,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            leading: const Icon(Ionicons.wallet),
            minLeadingWidth: 20.0,
            title: Text(
              S.of(context).menu_wallet,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            onTap: () {
              Navigator.pushNamed(context, 'wallet');
            },
          ),*/
        if (driver?.isWalletHidden == false)
          ListTile(
            iconColor: CustomTheme.primaryColors.shade800,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            leading: const Icon(Ionicons.time),
            minLeadingWidth: 20.0,
            title: Text(
              S.of(context).menu_trip_history,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            onTap: () {
              Navigator.pushNamed(context, 'trip-history');
            },
          ),
        ListTile(
          iconColor: CustomTheme.primaryColors.shade800,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          leading: const Icon(Ionicons.settings),
          minLeadingWidth: 20.0,
          title: Text(S.of(context).settings,
              style: Theme.of(context).textTheme.titleMedium),
          onTap: () {
            Navigator.pushNamed(context, 'settings');
          },
        ),
        ListTile(
          iconColor: CustomTheme.primaryColors.shade800,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          leading: const Icon(Ionicons.information),
          minLeadingWidth: 20.0,
          title: Text(
            S.of(context).menu_about,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          onTap: () async {
            PackageInfo packageInfo = await PackageInfo.fromPlatform();
            // ignore: use_build_context_synchronously
            showAboutDialog(
                context: context,
                applicationIcon: Image.asset(
                  'images/logo.png',
                  width: 100,
                  height: 100,
                ),
                applicationVersion:
                    "${packageInfo.version} (Build ${packageInfo.buildNumber})",
                applicationName: packageInfo.appName,
                applicationLegalese:
                    S.of(context).copyright_notice(companyName));
          },
        ),
        const Spacer(),
        // Enlace para cerrar sesión
        ListTile(
          iconColor: CustomTheme.primaryColors.shade800,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          leading: const Icon(Ionicons.log_out),
          minLeadingWidth: 20.0,
          title: Text(
            S.of(context).menu_logout,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          onTap: () async {
            final confirmed = await showDialog<bool>(
              context: context,
              builder: (context) => AlertDialog(
                title: Text(S.of(context).title_logout),
                content: Text(S.of(context).logout_dialog_body),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: Text(MaterialLocalizations.of(context).cancelButtonLabel),
                  ),
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: Text(MaterialLocalizations.of(context).okButtonLabel),
                  ),
                ],
              ),
            );
            if (confirmed == true) {
              // Cerrar sesión Firebase y limpiar datos locales
              /*try {
                await FirebaseAuth.instance.signOut();
              } catch (e) {}*/
              final userBox = Hive.box('user');
              await userBox.delete('jwt');
              await userBox.delete('driverId');
              // Navegar a la pantalla inicial
              // ignore: use_build_context_synchronously
              Navigator.of(context).popUntil((route) => route.isFirst);
            }
          },
        ),

      ]),
    );
  }
}
