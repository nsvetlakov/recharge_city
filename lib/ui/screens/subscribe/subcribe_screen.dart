import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pay/pay.dart';
import 'package:test_app_for_red/core/ext.dart';
import 'package:test_app_for_red/core/utils.dart';
import 'package:test_app_for_red/ui/router/router.dart';
import 'package:test_app_for_red/ui/shared/app_alert.dart';
import 'package:test_app_for_red/ui/shared/app_button.dart';
import 'package:test_app_for_red/ui/shared/app_divider.dart';
import 'package:test_app_for_red/ui/shared/app_icons.dart';
import 'package:test_app_for_red/ui/shared/app_input.dart';
import 'package:test_app_for_red/ui/shared/app_scaffold.dart';
import 'package:test_app_for_red/ui/shared/contact_support.dart';
import 'package:test_app_for_red/ui/shared/text.dart';

part 'widgets/_add_card.dart';

/// Экрна подписки
class SubscribeScreen extends ConsumerStatefulWidget {
  /// Экрна подписки
  const SubscribeScreen({super.key});

  @override
  ConsumerState<SubscribeScreen> createState() => _SubscribeScreenState();
}

class _SubscribeScreenState extends ConsumerState<SubscribeScreen> {
  late final Future<PaymentConfiguration> _googlePayConfigFuture;
  late final Future<PaymentConfiguration> _applePayConfigFuture;

  // тест оплаты
  static const _paymentItems = [
    PaymentItem(
      label: 'Total',
      amount: '4.99',
      status: PaymentItemStatus.final_price,
    ),
  ];
  @override
  void initState() {
    super.initState();
    _googlePayConfigFuture = PaymentConfiguration.fromAsset(
      'default_google_pay_config.json',
    );
    _applePayConfigFuture = PaymentConfiguration.fromAsset(
      'default_apple_pay_config.json',
    );
  }

  /// метод после успешной оплаты
  void onGooglePayResult(Map<String, dynamic> paymentResult) {
    appRouter.push(ScreenPaths.paymentScreen);
  }

  /// метод после успешной оплаты
  void onApplePayResult(Map<String, dynamic> paymentResult) {
    appRouter.push(ScreenPaths.paymentScreen);
  }

  @override
  Widget build(BuildContext context) {
    double sWidth = screenWidth(context);

    return AppScaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            14.sbHeight,
            AppIcons.icon(AppIcons.logo, width: 164),
            50.sbHeight,
            AppText.regular26('Rent a Charger'),
            10.sbHeight,
            Row(
              children: [
                AppText.regular38('\$4.99'),
                6.sbWidth,
                AppText.regular26(
                  '\$15.99',
                  color: Color(0xff606060).withValues(alpha: .5),
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Color(0xff606060).withValues(alpha: .5),
                ),
              ],
            ),
            10.sbHeight,
            AppDivider(),
            50.sbHeight,
            AppText.regular20('Select Payment Method'),
            18.sbHeight,
            // Example pay button configured using an asset
            FutureBuilder<PaymentConfiguration>(
              future: _googlePayConfigFuture,
              builder: (context, snapshot) {
                return snapshot.hasData
                    ? GooglePayButton(
                        paymentConfiguration: snapshot.data!,
                        paymentItems: _paymentItems,
                        type: GooglePayButtonType.buy,
                        width: sWidth,
                        onPaymentResult: onGooglePayResult,
                        loadingIndicator: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : const SizedBox.shrink();
              },
            ),
            FutureBuilder<PaymentConfiguration>(
              future: _applePayConfigFuture,
              builder: (context, snapshot) {
                return snapshot.hasData
                    ? ApplePayButton(
                        paymentConfiguration: snapshot.data!,
                        paymentItems: _paymentItems,
                        type: ApplePayButtonType.buy,
                        width: sWidth,
                        buttonProvider: PayProvider.apple_pay,
                        onPaymentResult: onApplePayResult,
                        loadingIndicator: const Center(
                          child: CircularProgressIndicator(),
                        ),
                        childOnError: AppText.medium20(
                          'No card in device',
                          color: Colors.redAccent,
                        ),
                      )
                    : const SizedBox.shrink();
              },
            ),

            18.sbHeight,
            AppDivider(),
            18.sbHeight,
            ListTile(
              leading: AppIcons.icon(AppIcons.card, width: 22, height: 22),
              title: AppText.regular16('Debit or credit card'),
              trailing: Icon(Icons.arrow_forward_ios_rounded, size: 24),
              contentPadding: EdgeInsets.zero,
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return _AddCard(
                      onTapAddCard: () {
                        appAlertBtn(
                          context,
                          text:
                              'Let\'s imagine that the card has been added and paid for.',
                          textBtn: 'Continue',
                          onTap: () {
                            appRouter.push(ScreenPaths.paymentScreen);
                          },
                        );
                      },
                    );
                  },
                );
              },
            ),
            18.sbHeight,
            AppDivider(),
            18.sbHeight,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: AppText.regular12(
                'If the battery is not returned within '
                '14 days or is lost, a \$99 fee will apply.',
                color: Color(0xff606060),
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(),
            AppContactSupport(),
          ],
        ),
      ),
    );
  }
}
