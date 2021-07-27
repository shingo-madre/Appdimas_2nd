class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;

  Chat({
    this.name = '',
    this.lastMessage = '',
    this.image = '',
    this.time = '',
    this.isActive = false,
  });
}

List chatsData = [
  Chat(
    name: "Andan Fathullah",
    lastMessage: "lorem ipsum Veniam nostrud magna incididunt aliqua nostrud commodo eu ut exercitation consectetur.",
    image: "assets/images/profile_image_1.png",
    time: "6/20/2021",
    isActive: false,
  ),
  Chat(
    name: "Raka Zein Akbar",
    lastMessage: "lorem ipsum Veniam nostrud magna incididunt aliqua nostrud commodo eu ut exercitation consectetur.",
    image: "assets/images/profile_image_2.png",
    time: "6/20/2021",
    isActive: true,
  ),
  Chat(
    name: "Dafa Raisya",
    lastMessage: "lorem ipsum Veniam nostrud magna incididunt aliqua nostrud commodo eu ut exercitation consectetur.",
    image: "assets/images/profile_image_4.png",
    time: "6/20/2021",
    isActive: false,
  ),
];
