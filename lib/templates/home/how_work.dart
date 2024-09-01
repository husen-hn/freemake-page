import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freemake_page/components/how_work_item.dart';
import 'package:freemake_page/controller/app/app_cubit.dart';

class HowWork extends StatelessWidget {
  const HowWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 32),
      child: Column(
        children: [
          const SelectableText('How does Freemake work?',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
          ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 20);
              },
              shrinkWrap: true,
              itemCount: context.read<AppCubit>().getHowWorkData.length,
              itemBuilder: (context, index) => HowWorkItem(
                  index: index,
                  icon: context.read<AppCubit>().getHowWorkData[index].icon,
                  title: context.read<AppCubit>().getHowWorkData[index].title,
                  description: context
                      .read<AppCubit>()
                      .getHowWorkData[index]
                      .description))
        ],
      ),
    );
  }
}
