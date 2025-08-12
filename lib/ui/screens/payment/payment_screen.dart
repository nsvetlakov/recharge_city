import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:test_app_for_red/core/app_config.dart';
import 'package:test_app_for_red/core/ext.dart';
import 'package:test_app_for_red/data/repo/local/src/shared_pref_repo_impl.dart';
import 'package:test_app_for_red/logic/repo/generate_account/account_provider.cg.dart';
import 'package:test_app_for_red/ui/shared/app_button.dart';
import 'package:test_app_for_red/ui/shared/app_icons.dart';
import 'package:test_app_for_red/ui/shared/app_scaffold.dart';
import 'package:test_app_for_red/ui/shared/contact_support.dart';
import 'package:test_app_for_red/ui/shared/text.dart';
import 'package:url_launcher/url_launcher.dart';

part 'widgets/_row_block.dart';

/// Экран оплаты
class PaymentScreen extends ConsumerStatefulWidget {
  /// Экран оплаты
  const PaymentScreen({super.key});

  @override
  ConsumerState<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends ConsumerState<PaymentScreen> {
  final local = SharedPreferenceRepositoryImpl();

  String idPowerBank = '';

  @override
  void initState() {
    super.initState();
    getIdPowerBank();
  }

  /// забираем id power bank
  Future<void> getIdPowerBank() async {
    final id = await local.readIdPowerBank();
    setState(() {
      idPowerBank = id;
    });
  }

  @override
  Widget build(BuildContext context) {
    final accountService = ref.watch(accountServiceProvider);

    return AppScaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            14.sbHeight,
            AppIcons.icon(AppIcons.logo, width: 164),
            50.sbHeight,
            Center(child: AppText.regular20('Charger Ejected!')),
            18.sbHeight,
            accountService.when(
              data: (d) {
                final data = d.rechargeUserEntity;

                // Парсим дату
                DateTime dateTime = DateTime.parse(data.createdAt);

                // Создаем форматтер
                DateFormat formatter = DateFormat('dd/MM/yyyy HH:mm:ss');

                // Преобразуем дату в нужный формат
                String formattedDate = formatter.format(dateTime);
                debugPrint('data.createdAt ${data.createdAt}');
                return Column(
                  children: [
                    _RowBlock(
                      pathIcon: AppIcons.receiptItem,
                      text: 'Order ID: #${data.braintreeCustomerId}',
                    ),
                    18.sbHeight,
                    _RowBlock(
                      pathIcon: AppIcons.infoCircle,
                      text: 'Rental information',
                    ),
                    10.sbHeight,
                    _RowBlock(text: 'Power bank ID: $idPowerBank'),
                    10.sbHeight,
                    _RowBlock(text: 'Started at: $formattedDate'),
                    10.sbHeight,
                    _RowBlock(text: 'Rental location: TEST LOCATION'),
                    10.sbHeight,
                    _RowBlock(text: 'Venue name: TEST LOCATION'),
                    30.sbHeight,
                    Center(child: AppText.regular20('How to end my rental?')),
                    20.sbHeight,
                    _RowBlock(
                      pathIcon: AppIcons.pinAlt,
                      text: 'Find any Regarche station',
                      subtext: 'You can use the app to find one near you.',
                    ),
                    12.sbHeight,
                    _RowBlock(
                      pathIcon: AppIcons.returnIcon,
                      text:
                          'Return the charger by inserting it into any empty slot.',
                    ),
                    12.sbHeight,
                    _RowBlock(
                      pathIcon: AppIcons.success,
                      text: 'Rental ends automatically!',
                    ),
                  ],
                );
              },
              error: (o, s) =>
                  AppText.medium20('Error $o', textAlign: TextAlign.center),
              loading: () => CircularProgressIndicator(),
            ),

            20.sbHeight,
            AppButton(
              text: 'Download App',
              onTap: () async {
                final launchUri = Uri.parse(
                  Platform.isAndroid
                      ? AppConfig.googlePlay
                      : Platform.isIOS
                      ? AppConfig.appStore
                      : '',
                );
                if (launchUri.path.isNotEmpty) {
                  await launchUrl(launchUri);
                }
              },
            ),

            Spacer(),
            AppContactSupport(),
          ],
        ),
      ),
    );
  }
}
