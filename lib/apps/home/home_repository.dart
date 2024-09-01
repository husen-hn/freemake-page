import 'package:freemake_page/apps/helper/how_work_schema.dart';
import 'package:freemake_page/apps/helper/who_is_schema.dart';
import 'package:freemake_page/assets.dart';

abstract class IHomeRepository {}

class HomeRepository {
  HomeRepository();

  List<HowWorkSchema> howWorkData = [
    HowWorkSchema(
        icon: Assets.chooseMedia,
        title: 'Add your files',
        description:
            'To begin, simply click the "Add Video" or "Add Audio" button to select the files you wish to convert.'),
    HowWorkSchema(
        icon: Assets.chooseFormat,
        title: 'Choose an output format',
        description:
            'Select the format you want to convert your files to from the list of available options. Freemake supports a wide variety of formats, including MP4, AVI, WMV, MP3, and more.'),
    HowWorkSchema(
        icon: Assets.convertMedia,
        title: 'Convert your files',
        description:
            'Click the "Convert" button to start converting your files. The conversion time will vary depending on the size and format of your files.')
  ];

  List<WhoIsSchema> whoIsData = [
    WhoIsSchema(
        icon: Assets.casualUser,
        title: 'Casual Users',
        description:
            'Ideal for those who need a simple, free solution for converting videos/audios for social media or personal projects.'),
    WhoIsSchema(
        icon: Assets.techEnthusiasts,
        title: 'Tech Enthusiasts',
        description:
            'Appreciated for its extensive format support and advanced features, perfect for managing large media files.'),
    WhoIsSchema(
        icon: Assets.contentCreator,
        title: 'Content Creators',
        description:
            'Reliable for converting videos/audios into formats compatible with various popular social media platforms.'),
    WhoIsSchema(
        icon: Assets.professional,
        title: 'For Professionals',
        description:
            'Valuable for its wide format support and high-quality output, making it an excellent, cost-free choice for professional use.')
  ];
}
