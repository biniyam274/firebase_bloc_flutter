class BaseAPI {
  // final String base = "192.168.1.154:5000";
  final String base = "192.168.1.202:5000";
  // static var api = base + "/api/v1";
  final usersPath = "/user";
  final authPath = "/auth";
  // more routes
  final Map<String, String> headers = {
    "Content-Type": "application/json",
  };
}
