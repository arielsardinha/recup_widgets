// ignore_for_file: constant_identifier_names

part of 'recup_storybook.dart';

sealed class RecupIcon {
  static const _kFontFam = 'RecupIcon';
  static const String? _kFontPkg = null;

  static const _eco_score_bar_light = 'assets/eco_score-light.svg';
  static const _eco_score_bar_dark = 'assets/eco_score-bar-dark.svg';

  static bool _isLightMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light;
  }

  static String ecoScoreBar(BuildContext context) {
    return _isLightMode(context) ? _eco_score_bar_light : _eco_score_bar_dark;
  }

  static const IconData chevron_double_down = IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData chevron_double_left = IconData(0xe801, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData chevron_double_right = IconData(0xe802, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData chevron_double_up = IconData(0xe803, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData chevron_down = IconData(0xe804, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData chevron_left = IconData(0xe805, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData chevron_right = IconData(0xe806, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData chevron_sort = IconData(0xe807, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData chevron_up = IconData(0xe808, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData direction_down = IconData(0xe809, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData direction_down_left = IconData(0xe80a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData direction_down_right = IconData(0xe80b, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData direction_ight = IconData(0xe80c, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData direction_left = IconData(0xe80d, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData direction_up = IconData(0xe80e, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData direction_up_left = IconData(0xe80f, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData direction_up_right = IconData(0xe810, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData cycle = IconData(0xe811, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData swap = IconData(0xe812, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData maximize = IconData(0xe813, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData minimize = IconData(0xe814, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData moving_down = IconData(0xe815, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData moving_down_1 = IconData(0xe816, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData camera_on = IconData(0xe817, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData check_circle = IconData(0xe818, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData flash_off = IconData(0xe819, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData flash_on = IconData(0xe81a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData bluetooth_audio = IconData(0xe81b, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData nfc = IconData(0xe81c, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData wi_fi = IconData(0xe81d, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData emoji_frown = IconData(0xe81e, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData emoji_meh = IconData(0xe81f, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData emoji_smile = IconData(0xe820, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData badge = IconData(0xe821, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData barcode = IconData(0xe822, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData certify = IconData(0xe823, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData coupon = IconData(0xe824, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData coupon_fill = IconData(0xe825, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData crown = IconData(0xe826, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData donation = IconData(0xe827, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData megaphone = IconData(0xe828, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData store = IconData(0xe829, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData trophy = IconData(0xe82a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData a = IconData(0xe82b, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData b = IconData(0xe82c, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData globe_1 = IconData(0xe82d, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData add_circle = IconData(0xe82e, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData c = IconData(0xe82f, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData d = IconData(0xe830, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData e = IconData(0xe831, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData comment_empty = IconData(0xe832, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData comment = IconData(0xe833, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData edit = IconData(0xe834, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData search = IconData(0xe835, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData calendar = IconData(0xe836, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData clock = IconData(0xe837, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData cookies = IconData(0xe838, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData document = IconData(0xe839, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData document_check = IconData(0xe83a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData hastag = IconData(0xe83b, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData star = IconData(0xe83c, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData time_quarter_past = IconData(0xe83d, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData add_circle_outline = IconData(0xe83e, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData flag = IconData(0xe83f, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData map = IconData(0xe840, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData navegation = IconData(0xe841, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData apple_fill = IconData(0xe842, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData email = IconData(0xe843, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData google_fill = IconData(0xe844, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData login = IconData(0xe845, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData logout = IconData(0xe846, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData gift = IconData(0xe847, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData gift_fill = IconData(0xe848, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData home = IconData(0xe849, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData home_fill = IconData(0xe84a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData local = IconData(0xe84b, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData local_fill = IconData(0xe84c, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData scan = IconData(0xe84d, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData template = IconData(0xe84f, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData gift_outline = IconData(0xe850, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData home_outline = IconData(0xe851, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData local_outline = IconData(0xe852, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData battery = IconData(0xe854, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData categories = IconData(0xe855, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData coffee_pod = IconData(0xe856, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData glasses = IconData(0xe857, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData headphone = IconData(0xe858, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData medicine = IconData(0xe859, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData parfum = IconData(0xe85a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData smartphone = IconData(0xe85b, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData chart_arrow_grow = IconData(0xe85c, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData chart_pie = IconData(0xe85d, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData co2_down = IconData(0xe85e, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData dashboard = IconData(0xe85f, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData drops = IconData(0xe860, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData leaf = IconData(0xe861, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData light = IconData(0xe862, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData loop = IconData(0xe863, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData performance = IconData(0xe864, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData recycle = IconData(0xe865, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData sun = IconData(0xe866, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData tree = IconData(0xe867, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData thermometer = IconData(0xe868, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData weight = IconData(0xe869, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData world = IconData(0xe86a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData car = IconData(0xe86b, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData eye = IconData(0xe86c, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData eye_crossed = IconData(0xe86d, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData key = IconData(0xe86e, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData lock_password = IconData(0xe86f, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData shield_check = IconData(0xe870, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData unlock_password = IconData(0xe871, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData filter_list = IconData(0xe872, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData settings = IconData(0xe873, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData theme = IconData(0xe874, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData facebook_fill = IconData(0xe875, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData instagram_fill = IconData(0xe876, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData linkedin_fill = IconData(0xe877, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData twitter_fill = IconData(0xe878, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData block = IconData(0xe879, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData all_inclusive = IconData(0xe87a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData add = IconData(0xe87b, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData check = IconData(0xe87c, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData remove_circle = IconData(0xe87d, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData remove = IconData(0xe87e, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData remove_circle_outline = IconData(0xe87f, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData recoin_fill = IconData(0xe880, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData recoin = IconData(0xe881, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData radio_button_unchecked = IconData(0xe882, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData euro_symbol = IconData(0xe883, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData notification = IconData(0xe884, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData bookmark_fill = IconData(0xe885, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData heart_fill = IconData(0xe886, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData loader = IconData(0xe887, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData trash = IconData(0xe888, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData picture = IconData(0xe889, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData user = IconData(0xe88a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData user_add = IconData(0xe88b, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData user_delete = IconData(0xe88c, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData user_donator = IconData(0xe88d, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData user_group = IconData(0xe88e, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData user_remove = IconData(0xe88f, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData user_time = IconData(0xe890, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData bookmark = IconData(0xe891, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData error_outline = IconData(0xe892, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData error = IconData(0xe893, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData help = IconData(0xe894, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData help_outline = IconData(0xe895, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData info = IconData(0xe896, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData info_outline = IconData(0xe897, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData highlight_off = IconData(0xe898, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData share = IconData(0xe899, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData close_1 = IconData(0xe89a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData thumbs_up_fill = IconData(0xe89b, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData thumb_up = IconData(0xe89c, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData explore = IconData(0xe89d, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData send = IconData(0xe89e, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData thumb_down_fill = IconData(0xe89f, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData thumb_down = IconData(0xe8a0, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData heart = IconData(0xe8a1, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData turn_right = IconData(0xe8a2, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData link = IconData(0xe8a3, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData my_location = IconData(0xe8a4, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData network = IconData(0xe8a5, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData picture_fill = IconData(0xe8a6, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData ok_circled2 = IconData(0xe8a7, fontFamily: _kFontFam, fontPackage: _kFontPkg);

  static const _iconsMap = {
    "chevron_double_down": chevron_double_down,
    "chevron_double_left": chevron_double_left,
    "chevron_double_right": chevron_double_right,
    "chevron_double_up": chevron_double_up,
    "chevron_down": chevron_down,
    "chevron_left": chevron_left,
    "chevron_right": chevron_right,
    "chevron_sort": chevron_sort,
    "chevron_up": chevron_up,
    "direction_down": direction_down,
    "direction_down_left": direction_down_left,
    "direction_down_right": direction_down_right,
    "direction_ight": direction_ight,
    "direction_left": direction_left,
    "direction_up": direction_up,
    "direction_up_left": direction_up_left,
    "direction_up_right": direction_up_right,
    "cycle": cycle,
    "swap": swap,
    "maximize": maximize,
    "minimize": minimize,
    "moving_down": moving_down,
    "moving_down_1": moving_down_1,
    "camera_on": camera_on,
    "check_circle": check_circle,
    "flash_off": flash_off,
    "flash_on": flash_on,
    "bluetooth_audio": bluetooth_audio,
    "nfc": nfc,
    "wi_fi": wi_fi,
    "emoji_frown": emoji_frown,
    "emoji_meh": emoji_meh,
    "emoji_smile": emoji_smile,
    "badge": badge,
    "barcode": barcode,
    "certify": certify,
    "coupon": coupon,
    "coupon_fill": coupon_fill,
    "crown": crown,
    "donation": donation,
    "megaphone": megaphone,
    "store": store,
    "trophy": trophy,
    "a": a,
    "b": b,
    "globe_1": globe_1,
    "add_circle": add_circle,
    "c": c,
    "d": d,
    "e": e,
    "comment_empty": comment_empty,
    "comment": comment,
    "edit": edit,
    "search": search,
    "calendar": calendar,
    "clock": clock,
    "cookies": cookies,
    "document": document,
    "document_check": document_check,
    "hastag": hastag,
    "star": star,
    "time_quarter_past": time_quarter_past,
    "add_circle_outline": add_circle_outline,
    "flag": flag,
    "map": map,
    "navegation": navegation,
    "apple_fill": apple_fill,
    "email": email,
    "google_fill": google_fill,
    "login": login,
    "logout": logout,
    "gift": gift,
    "gift_fill": gift_fill,
    "home": home,
    "home_fill": home_fill,
    "local": local,
    "local_fill": local_fill,
    "scan": scan,
    "scan_fill": scan,
    "template": template,
    "gift_outline": gift_outline,
    "home_outline": home_outline,
    "local_outline": local_outline,
    // "scan_outline": scan,
    "battery": battery,
    "categories": categories,
    "coffee_pod": coffee_pod,
    "glasses": glasses,
    "headphone": headphone,
    "medicine": medicine,
    "parfum": parfum,
    "smartphone": smartphone,
    "chart_arrow_grow": chart_arrow_grow,
    "chart_pie": chart_pie,
    "co2_down": co2_down,
    "dashboard": dashboard,
    "drops": drops,
    "leaf": leaf,
    "light": light,
    "loop": loop,
    "performance": performance,
    "recycle": recycle,
    "sun": sun,
    "tree": tree,
    "thermometer": thermometer,
    "weight": weight,
    "world": world,
    "car": car,
    "eye": eye,
    "eye_crossed": eye_crossed,
    "key": key,
    "lock_password": lock_password,
    "shield_check": shield_check,
    "unlock_password": unlock_password,
    "filter_list": filter_list,
    "settings": settings,
    "theme": theme,
    "facebook_fill": facebook_fill,
    "instagram_fill": instagram_fill,
    "linkedin_fill": linkedin_fill,
    "twitter_fill": twitter_fill,
    "block": block,
    "all_inclusive": all_inclusive,
    "add": add,
    "check": check,
    "remove_circle": remove_circle,
    "remove": remove,
    "remove_circle_outline": remove_circle_outline,
    "recoin_fill": recoin_fill,
    "recoin": recoin,
    "radio_button_unchecked": radio_button_unchecked,
    "euro_symbol": euro_symbol,
    "notification": notification,
    "bookmark_fill": bookmark_fill,
    "heart_fill": heart_fill,
    "loader": loader,
    "trash": trash,
    "picture": picture,
    "user": user,
    "user_add": user_add,
    "user_delete": user_delete,
    "user_donator": user_donator,
    "user_group": user_group,
    "user_remove": user_remove,
    "user_time": user_time,
    "bookmark": bookmark,
    "error_outline": error_outline,
    "error": error,
    "help": help,
    "help_outline": help_outline,
    "info": info,
    "info_outline": info_outline,
    "highlight_off": highlight_off,
    "share": share,
    "close_1": close_1,
    "thumbs_up_fill": thumbs_up_fill,
    "thumb_up": thumb_up,
    "explore": explore,
    "send": send,
    "thumb_down_fill": thumb_down_fill,
    "thumb_down": thumb_down,
    "heart": heart,
    "turn_right": turn_right,
    "link": link,
    "my_location": my_location,
    "network": network,
    "picture_fill": picture_fill,
  };

  static Map<String, IconData> getIconsMap() {
    return _iconsMap;
  }
}
