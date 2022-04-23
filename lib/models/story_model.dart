import 'package:meta/meta.dart';
import 'package:flutterreplicaui/models/models.dart';


class Story{

  final User user;
  final String imageUrl;
  final bool isViewed;

  const Story({
    @required this.user,
    @required this.imageUrl,
    @required this.isViewed
  });
}