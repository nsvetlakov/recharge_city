part of '../subcribe_screen.dart';

class _AddCard extends StatelessWidget {
  const _AddCard({required this.onTapAddCard});

  final void Function() onTapAddCard;
  @override
  Widget build(BuildContext context) {
    final keyboardH = MediaQuery.of(context).viewInsets.bottom;
    final isShowKeyboard = keyboardH > 100;
    return Container(
      height: isShowKeyboard ? 430 + keyboardH : 430,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.elliptical(26, 14),
          topRight: Radius.elliptical(26, 14),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      child: Column(
        children: [
          Transform.translate(
            offset: Offset(0, 0),
            child: Container(width: 100, height: 6, color: Color(0xffE9E9E9)),
          ),
          24.sbHeight,
          AppText.regular20('Enter your card details'),
          24.sbHeight,
          Container(
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Color(0xffF5F5F5),
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: IconButton(
                        icon: Icon(Icons.keyboard_arrow_up_rounded),
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppIcons.icon(AppIcons.card),
                          8.sbWidth,
                          AppText.medium20('Debit or credit card'),
                        ],
                      ),
                    ),
                  ],
                ),
                16.sbHeight,
                AppInput(hintText: 'Card number'),
                6.sbHeight,
                AppInput(hintText: 'Name'),
                6.sbHeight,
                Row(
                  children: [
                    Expanded(child: AppInput(hintText: 'Month/Year')),
                    6.sbWidth,
                    Expanded(child: AppInput(hintText: 'CVV')),
                  ],
                ),
                16.sbHeight,
                AppButton(text: 'Continue', onTap: onTapAddCard),

                16.sbHeight,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
