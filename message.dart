enum Sender { user, bot }

class Message {
  final String text;
  final Sender sender;
  final bool isMarkdown;

  Message(this.text, this.sender, {this.isMarkdown = false});
}
