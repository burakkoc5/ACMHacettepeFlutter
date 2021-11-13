class User {
  final String imageUrl;
  final String title;
  final String description;
  final String storyText;

  User({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.storyText,
  });

  factory User.exampleUser() {
    return User(
      imageUrl:
          "https://scontent.fesb3-2.fna.fbcdn.net/v/t1.6435-9/183314822_104916581767338_9199571408940307248_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=UIX0yn__pswAX_bALCG&_nc_ht=scontent.fesb3-2.fna&oh=9b11800a75292e37d3772d15ba027924&oe=61B53478",
      title: "Aslı Zeynep Doğan",
      description: "Kedi",
      storyText: '''
        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod 
        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
         quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
         Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
          Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.      
      ''' *
          5,
    );
  }
}
