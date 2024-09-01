import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freemake_page/components/who_is_item.dart';
import 'package:freemake_page/controller/app/app_cubit.dart';

class WhoIs extends StatelessWidget {
  const WhoIs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 32),
      height: 460,
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
            height: 350,
            child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(width: 60);
                },
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: context.read<AppCubit>().getWhoIsData.length,
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
