@GetMapping("/profile")
public String profile(Model model, @CookieValue(name = "user") String userCookie) {
  byte[] dataBytes = Base64.getDecoder().decode(userCookie);
  final ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(dataBytes);
  final ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
  final User user = (User) objectInputStream.readObject();
  objectInputStream.close();
  model.addAttribute("name", user.getName());
  model.addAttribute("name", user.getEmail());
  return "profile";
}
