import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class AppIcons {
  AppIcons._();

  static final addIcon = SvgPicture.asset(Constants.ADD_ICON_PATH);
  static final moreIcon = SvgPicture.asset(Constants.MORE_ICON_PATH);
  static final checkedIcon = SvgPicture.asset(Constants.CHECKED_ICON_PATH);
  static final closeIcon = SvgPicture.asset(Constants.CLOSE_ICON_PATH);
  static final collapseIcon = SvgPicture.asset(Constants.COLLAPSE_ICON_PATH);
  static final happyEmojiIcon =
      SvgPicture.asset(Constants.HAPPY_EMOJI_ICON_PATH);
}
