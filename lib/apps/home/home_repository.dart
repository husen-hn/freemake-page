import 'package:freemake_page/apps/helper/who_is_schema.dart';
import 'package:freemake_page/assets.dart';

abstract class IHomeRepository {}

class HomeRepository {
  HomeRepository();

  List<WhoIsSchema> whoIsData = [
    WhoIsSchema(
        icon: Assets.casualUser,
        title: 'Freemake for Casual Users',
        description:
            'Freemake is ideal for casual users who need a straightforward, free solution to convert videos for social media, personal projects, or sharing with friends and family. With its user-friendly interface and no hidden costs, Freemake makes video conversion a breeze.'),
    WhoIsSchema(
        icon: Assets.techEnthusiasts,
        title: 'Freemake for Tech Enthusiasts',
        description:
            "Tech enthusiasts will appreciate Freemake's extensive format support and advanced features. Whether you're managing a vast media library or experimenting with different video formats, Freemake provides the flexibility and reliability you need."),
    WhoIsSchema(
        icon: Assets.contentCreator,
        title: 'Freemake for Content Creators',
        description:
            "Content creators can rely on Freemake to convert videos into various formats suitable for different platforms. Whether you're producing content for YouTube, Instagram, or other social media, Freemake ensures your videos are compatible and high-quality."),
    WhoIsSchema(
        icon: Assets.professional,
        title: 'Freemake for Professionals',
        description:
            'Professionals in need of a reliable video conversion tool will find Freemake invaluable. Its support for a wide range of formats and devices, along with its high-quality output, makes it a perfect choice for professional use without the cost.')
  ];
}
