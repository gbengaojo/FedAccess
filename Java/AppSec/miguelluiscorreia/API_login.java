@RequestMapping("/login")
public String login(@RequestParam Map<String, String> parameters, HttpServeletRequest request,
                    HttpServletResponse response, Model model) {
  if (request.getMethod().equals("POST") && !parameters.isEmpty()) {
    String query = String.format("SELECT username, email, name FROM users WHERE username='%s' AND password='%s'",
                                 parameters.get("uname"), parameters.get("psw"));

    User user = jdbcTemplate.queryForObject(query, new UserRowMaper());
    if (user != null) {
      model.addAttribute("name", user.getName());
      model.addAtrribute("email", user.getEmail());
      response.addCookie(new Cookie("logged_in", "true"));
      if (user.getUsername().equals("admin")) {
        response.addCookie(new Cookie("admin", "true")
      }
      return "profile";
    }
  }
  return "login";
}

// all looks ok here. The SQL query is parameterized. Two *possible* issues come
// to mind. 1) no input validation on the GET parameters, and 2) no real session
// (cookie) management. E.g, a time-out could be implemented so that the session
// doesn't exist indefinitely. `username` could be validated against a whitelist
// or checked to ensure it contains the proper format.
