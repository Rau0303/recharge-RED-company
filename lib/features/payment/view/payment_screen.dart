import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recharge/ui/ui.dart';

@RoutePage()
class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final items = ['Debit or credit card'];
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: size.height * 0.06,
          horizontal: size.width * 0.05,
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: AppLogo()),

            SliverToBoxAdapter(child: SizedBox(height: 50)),

            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Monthly Subscription',
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w400,
                      height: 1.25,
                      letterSpacing: 1,
                      fontSize: 26,
                    ),
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic, // обязательно
                    children: [
                      Text(
                        '\$4.99',
                        style: theme.textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 38,
                          height: 57.95 / 38,
                          letterSpacing: 0.38,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        '\$9.99',
                        style: theme.textTheme.titleLarge?.copyWith(
                          color: AppColors.gray.withValues(alpha: 0.5),
                          decoration: TextDecoration.lineThrough,
                          decorationColor: AppColors.gray.withValues(
                            alpha: 0.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'First month only',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: AppColors.gray,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Divider(color: AppColors.gray, thickness: 0.5),
                  SizedBox(height: 15),
                ],
              ),
            ),

            SliverToBoxAdapter(child: PaymentButton(onPressed: () {})),
            SliverToBoxAdapter(child: SizedBox(height: 10)),
            SliverToBoxAdapter(
              child: Divider(color: AppColors.gray, thickness: 1),
            ),
            SliverList.builder(
              itemCount: items.length,
              
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: SvgPicture.asset('assets/svg/card.svg'),
                      title: Text(
                        items[index],
                        style: theme.textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    Divider(color: AppColors.gray, thickness: 0.5)
                  ],
                );
              },
            ),

            SliverFillRemaining(
              hasScrollBody: false,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Nothing happened?',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: AppColors.gray,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Contact support',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: AppColors.gray,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentButton extends StatelessWidget {
  const PaymentButton({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColors.black),
        minimumSize: WidgetStatePropertyAll(Size(double.infinity, 45)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        ),
      ),
      onPressed: onPressed,
      child: SvgPicture.asset('assets/svg/apple_pay.svg'),
    );
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Baseline(
          baseline: size.height * 0.04,
          baselineType: TextBaseline.alphabetic,
          child: Container(
            height: size.height * 0.04,
            width: size.height * 0.04,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                colors: [
                  Color(0xFFF9FD57),
                  Color(0xFFD0FF1D),
                  Color(0xFF9DFF10),
                  Color(0xFF70FF02),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Baseline(
          baseline: size.height * 0.04,
          baselineType: TextBaseline.alphabetic,
          child: SvgPicture.asset('assets/svg/title.svg'),
        ),
      ],
    );
  }
}
