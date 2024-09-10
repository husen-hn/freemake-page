import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freemake_page/components/who_is_item.dart';
import 'package:freemake_page/controller/app/app_cubit.dart';

class WhoIs extends StatelessWidget {
  const WhoIs({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLScreen = MediaQuery.of(context).size.width > 600;

    return Container(
      padding: const EdgeInsets.all(32),
      height: isLScreen ? 500 : null,
      color: Colors.grey[200],
      child: Column(
        children: [
          SelectableText(
            'Who is Freemake For?',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.grey[900]),
          ),
          const SizedBox(height: 40),
          SizedBox(
            height: isLScreen ? 300 : null,
            child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: isLScreen ? Axis.horizontal : Axis.vertical,
                shrinkWrap: true,
                itemCount: context.read<AppCubit>().getWhoIsData.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 60,
                    height: 30,
                  );
                },
                itemBuilder: (BuildContext context, int index) => WhoIsItem(
                    icon: context.read<AppCubit>().getWhoIsData[index].icon,
                    title: context.read<AppCubit>().getWhoIsData[index].title,
                    description: context
                        .read<AppCubit>()
                        .getWhoIsData[index]
                        .description)),
          )
        ],
      ),
    );
  }
}
