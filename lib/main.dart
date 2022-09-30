import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: WiseQuotes()));
}

class WiseQuotes extends StatefulWidget {
  const WiseQuotes({Key? key}) : super(key: key);

  @override
  NewWiseQuotes createState() => NewWiseQuotes();
}

class NewWiseQuotes extends State<WiseQuotes> {
  int index = 0;
  List<String> quotes = [
    "When you have a dream, you've got to grab it and never let go.",
    "Nothing is impossible. The word itself says 'I'm possible!'",
    "There is nothing impossible to they who will try.",
    "Life has got all those twists and turns. You've got to hold on tight and off you go.",
    "Keep your face always toward the sunshine, and shadows will fall behind you.",
    "Be courageous. Challenge orthodoxy. Stand up for what you believe in. When you are in your rocking chair talking to your grandchildren many years from now, be sure you have a good story to tell.",
    "You make a choice: continue living your life feeling muddled in this abyss of self-misunderstanding, or you find your identity independent of it. You draw your own box.",
    "I just want you to know that if you are out there and you are being really hard on yourself right now for something that has happened ... it's normal. That is what is going to happen to you in life. No one gets through unscathed. We are all going to have a few scratches on us. Please be kind to yourselves and stand up for yourself, please.",
    "Success is not final, failure is not fatal: it is the courage to continue that counts.",
    "You define your own life. Don't let other people write your script.",
    "You are never too old to set another goal or to dream a new dream.",
    "At the end of the day, whether or not those people are comfortable with how you're living your life doesn't matter. What matters is whether you're comfortable with it.",
    "People tell you the world looks a certain way. Parents tell you how to think. Schools tell you how to think. TV. Religion. And then at a certain point, if you're lucky, you realize you can make up your own mind. Nobody sets the rules but you. You can design your own life.",
    "For me, becoming isn’t about arriving somewhere or achieving a certain aim. I see it instead as forward motion, a means of evolving, a way to reach continuously toward a better self. The journey doesn't end.",
    "Spread love everywhere you go.",
    "Do not allow people to dim your shine because they are blinded. Tell them to put some sunglasses on.",
    "If you make your internal life a priority, then everything else you need on the outside will be given to you and it will be extremely clear what the next step is.",
    "You don't always need a plan. Sometimes you just need to breathe, trust, let go and see what happens.",
    "You can be everything. You can be the infinite amount of things that people are.",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Quotes App'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 34),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                child: Center(
                  child: Text(
                    quotes[index % quotes.length],
                    style: const TextStyle(
                        fontSize: 28,
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextButton.icon(
                  onPressed: () => getQuotes(),
                  icon: const Icon(
                    Icons.brightness_7,
                    color: Colors.green,
                  ),
                  label: const Text(
                    'Inspire Me',
                    style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        color: Colors.green),
                  )),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  getQuotes() {
    setState(() {
      index++;
    });
  }
}
