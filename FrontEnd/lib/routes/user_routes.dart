import 'package:frontend/resources/views/user/profile_view.dart';
import 'package:frontend/config/routes_config.dart';

var userRoutes = [
  RouteConfig(path: "/profile", component: ProfileView()),
  RouteConfig(path: "/add-user", component: ProfileView()),
];