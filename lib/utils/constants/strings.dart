class Strings {
  // App
  static const appTitle = 'Lyrics Player';

  //router constants
  static const String homeScreenRoute = '/';

  // HomeScreen
  static const homeScreenTitle = 'Trending Songs';
  static const detailsScreenTitle = 'Product Details';
  static const homeScreenCenterText = 'Acrobuild';
  static String jsonDb = "";
  static const activeUserTitle = "Active Users";
  static const activeUserSubtitle =
      "Visually depicts how many registered users are active on all the project";
  static const Map<String, double> activeUserDataMap = {
    "Active User": 7,
    "Inactive User": 3
  };

  static const projectUserTitle = "Project Wise Users";
  static const projectUserSubtitle = "Describe the number of users allotted per project";
  static const Map<String, double> projectUserDataMap = {
    "ProjectA": 10,
    "ProjectB": 13,
    "ProjectC": 18,
    "ProjectD": 8,
  };

  static const smsUsageTitle = "SMS Usage";
  static const smsUsageSubtitle = "Stats for your SMS Usage(as per your subscription and/or offer availed)";
  static const Map<String, double> smsUsageDataMap = {
    "Promotional": 6,
    "Transactional": 4,
  };

  static const emailUsageTitle = "Email Usage";
  static const emailUsageSubtitle = "Stats for your Email Usage(as per your subscription and/or offer availed)";
  static const Map<String, double> emailUsageDataMap = {
    "Promotional": 5,
    "Transactional": 5,
  };
}
