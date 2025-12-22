import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kera_app/core/theming/app_assets.dart';
import 'package:kera_app/core/theming/app_styles.dart';
import 'package:kera_app/features/home/manager/booking_tabs_cubit/booking_tabs_cubit.dart';

class BookingTabs extends StatelessWidget {
  const BookingTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BookingTabsCubit(),
      child: BlocBuilder<BookingTabsCubit, int>(
        builder: (context, currentIndex) {
          final bookingTabs = ["الحجز الاقتصادي", "حجز بالسرير", "حجز كبسولة"];

          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Row(
                children: List.generate(bookingTabs.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      return context.read<BookingTabsCubit>().changeTab(index);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 12,
                      ),
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2, color: Color(0xffE9EBED)),
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Color(0xffE9EBED),
                            child: SvgPicture.asset(AppAssets.singleBedIcon,width: 16,),
                          ),
                          SizedBox(width: 8),
                          Text(
                            bookingTabs[index],
                            style: AppStyles.bold16.copyWith(
                              color: Color(0xff78828A),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          );
        },
      ),
    );
  }
}
