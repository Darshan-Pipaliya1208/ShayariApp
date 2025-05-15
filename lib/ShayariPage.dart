import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shayariapp/SubShayariPage.dart';

class ShayariPage extends StatefulWidget {
  String shayariName;

  ShayariPage(this.shayariName, {super.key});

  @override
  State<ShayariPage> createState() => _ShayariPageState();
}

class _ShayariPageState extends State<ShayariPage> {
  @override
  List<String> natureShayari = [
    "In the whisper of the trees, I hear nature's lullaby.",
    "The beauty of nature is a gift that cultivates appreciation and gratitude.",
    "Amidst the blossoms, the world stands still, listening to nature's song.",
    "Every flower is a soul blossoming in nature.",
    "The mountains speak in silence, telling tales of time and serenity.",
    "Nature's beauty is an endless source of inspiration and joy.",
    "In the arms of nature, I find my peace and solace.",
    "The sky above, the earth below, and peace within.",
    "Nature does not hurry, yet everything is accomplished.",
    "In every walk with nature, one receives far more than he seeks."
  ];


  List<String> inspirationalShayari = [
    "Rise above the storm, and you will find the sunshine.",
    "Dream big, for every dream precedes the goal.",
    "The harder you work for something, the greater you'll feel when you achieve it.",
    "Believe in yourself and all that you are. Know that there is something inside you that is greater than any obstacle.",
    "Your limitation—it's only your imagination.",
    "Push yourself, because no one else is going to do it for you.",
    "Success is not how high you have climbed, but how you make a positive difference to the world.",
    "Great things never come from comfort zones.",
    "Dream it. Wish it. Do it.",
    "Don't watch the clock; do what it does. Keep going.",
    'In the face of adversity, rise like the sun, for even the darkest night will be outdone.',
    'With courage in your heart and dreams in your eyes, theres no limit to how high you can rise.',
    'Embrace the challenges, for they make you strong; every setback is a step towards where you belong.',
    'Like a river carving its path through stone, let determination guide you when youre all alone.',
    'With every storm, theres a rainbow in the end; let hope and persistence be your dearest friend.',
    'The journey may be tough and fraught with fears, but your spirits resilience will dry your tears.',
    'Let your dreams be the wings that help you soar; with faith in your heart, youll find even more.',
  ];

  List<String> birthdayShayari = [
    "May your birthday be as wonderful as you are!",
    "Wishing you a day filled with love and cheer.",
    "Happy Birthday! May all your dreams come true.",
    "May your special day be filled with moments as special as you.",
    "Celebrate your day with joy and laughter.",
    "Here's to a day that's as special as you are. Happy Birthday!",
    "Cheers to another year of success, happiness, and joy. Happy Birthday!",
    "May this year be your best year yet. Happy Birthday!",
    "Sending you smiles for every moment of your special day.",
    "Wishing you all the great things in life. Happy Birthday!"
  ];

  List<String> motivationShayari = [
    "Believe in yourself, for you are stronger than you think.",
    "Every step you take is a step closer to your dreams.",
    "Success is not the key to happiness. Happiness is the key to success.",
    "Don't be afraid to stand for what you believe in, even if it means standing alone.",
    "Hard times don't create heroes. It is during the hard times when the 'hero' within us is revealed.",
    "The future belongs to those who believe in the beauty of their dreams.",
    "Your passion is waiting for your courage to catch up.",
    "The harder you work, the luckier you get.",
    "Don’t watch the clock; do what it does. Keep going.",
    "Strength doesn’t come from what you can do. It comes from overcoming the things you once thought you couldn’t."
  ];

  List<String> successShayari = [
    "Success is not the destination, but the journey of perseverance.",
    "The road to success is dotted with many tempting parking spaces.",
    "Success is the result of preparation, hard work, and learning from failure.",
    "Your success is only limited by your own imagination.",
    "In the dictionary, success comes only after hard work.",
    "Success doesn’t come to you; you go to it.",
    "The ladder of success is best climbed by stepping on the rungs of opportunity.",
    "Success is sweet, but the secret is sweat.",
    "The key to success is to start before you are ready.",
    "Success is not for the chosen few, but for those who choose to be successful."
  ];

  List<String> friendshipShayari = [
    "Friendship is the golden thread that ties the heart of all the world.",
    "In the sweetness of friendship let there be laughter and sharing of pleasures.",
    "A friend is one who overlooks your broken fence and admires the flowers in your garden.",
    "True friendship isn't about being inseparable; it's about being separated and nothing changes.",
    "Friends are the siblings God never gave us.",
    "A real friend is one who walks in when the rest of the world walks out.",
    "Friendship is born at that moment when one person says to another, ‘What! You too? I thought I was the only one.’",
    "There is nothing on this earth more to be prized than true friendship.",
    "A friend is someone who knows all about you and still loves you.",
    "Good friends are like stars. You don’t always see them, but you know they’re always there."
  ];

  List<String> anniversaryShayari = [
    "Through the storms of life, may your love for one another be steadfast and strong.",
    "Another year to create precious memories together.",
    "Your love is an inspiration to all those who know you. Happy Anniversary!",
    "May your love grow stronger each and every passing year.",
    "You are the reason I am who I am today. Happy Anniversary!",
    "Celebrating the beauty of your love and the joy of your togetherness.",
    "May your love continue to be the light that guides you through all of life's trials.",
    "Happy Anniversary! Here's to another year of wonderful moments together.",
    "The bond you share is a treasure. May it deepen with each passing year.",
    "Anniversaries are milestones where you can pause and look back at your life to cherish all the beautiful memories and bind yourselves to all the amazing promises that are yet to be fulfilled."
  ];

  List<String> attitudeShayari = [
    "Attitude is the mirror of your personality; let it shine bright.",
    "Your attitude determines your direction.",
    "Winners focus on winning, losers focus on winners.",
    "I don't have an attitude problem, you have a perception problem.",
    "My life, my rules, my attitude.",
    "Be yourself; everyone else is already taken.",
    "A strong positive attitude will create more miracles than any wonder drug.",
    "My attitude is based on how you treat me.",
    "Don't change so people will like you. Be yourself and the right people will love the real you.",
    "Don't stop until you're proud."
  ];

  List<String> sadShayari = [
    "Tears are words that the heart can't express.",
    "Sometimes, the most painful goodbyes are the ones that are never said and never explained.",
    "Sadness flies away on the wings of time.",
    "Behind my smile is a hurting heart, behind my laugh, I'm falling apart.",
    "The worst kind of pain is when you're smiling just to stop the tears from falling.",
    "I tried to forget you, but the harder I tried, the more I thought about you.",
    "You promised me forever, but you left me with a broken heart.",
    "The saddest thing in the world is loving someone who used to love you.",
    "It's hard to forget someone who gave you so much to remember.",
    "I wish I could go back to the day I met you and just walk away."
  ];

  List<String> heartShayari = [
    "In your heartbeat, I found my rhythm.",
    "Your love resides in every beat of my heart.",
    "Every beat of my heart whispers your name.",
    "The heart that truly loves never forgets.",
    "You hold the key to my heart, now and forever.",
    "My heart dances in the rain of your love.",
    "The heart always knows what the mind forgets.",
    "In the garden of my heart, you are the most beautiful flower.",
    "My heart's melody is tuned to the symphony of your love.",
    "No matter how far, you are always close to my heart."
  ];

  List<String> sharoShayari = [
    "In the silence of the night, the heart speaks to the moon.",
    "The ink of my pen weaves tales of love and sorrow.",
    "Beneath the stars, my soul sings a lonely song.",
    "Every tear is a word left unspoken, a page from my heart.",
    "In the garden of my dreams, you are the blossom that withers.",
    "My heart is a silent poet, whispering words of longing.",
    "Love's echo fades, but the memory remains etched in the heart.",
    "In the mirror of the past, I see reflections of lost love.",
    "The night and my thoughts, both are dark and deep.",
    "My soul writes verses in the language of pain and love."
  ];

  List<String> eyesShayari = [
    "In your eyes, I find my sanctuary.",
    "Your eyes speak the language of love that words cannot express.",
    "The depth of your eyes reflects the depth of your soul.",
    "When I look into your eyes, I see the universe unfolding.",
    "Your eyes are the mirror to your heart, showing love in every glance.",
    "In your eyes, I find a thousand unspoken dreams.",
    "Your eyes are the stars, and your heart is the sky.",
    "The beauty of your eyes captivates my soul.",
    "Every time I look into your eyes, I fall in love all over again.",
    "Your eyes hold the promise of a thousand tomorrows."
  ];

  List<String> boysShayari = [
    "Boys with dreams turn into men with vision.",
    "A boy with a brave heart can conquer anything.",
    "Strength and wisdom make a boy become a man.",
    "In every boy lies the spirit of a warrior.",
    "Adventure and curiosity are the trademarks of a boy's heart.",
    "Boys will be boys, but only the courageous become men.",
    "A boy's smile can light up the darkest day.",
    "Boys may grow into men, but their playful spirit remains forever young.",
    "A boy's journey to manhood is paved with courage and adventure.",
    "In the eyes of a boy, the world is full of endless possibilities."
  ];

  List<String> otherShayari = [
    "Life is a journey, and those who travel it find the most beautiful destinations.",
    "In the dance of life, we find our true rhythm.",
    "The pages of life are best turned with a gentle hand and an open heart.",
    "Happiness is not found in things you possess, but in the joy of giving.",
    "The melody of life is composed with the notes of love and compassion.",
    "Every sunset brings the promise of a new dawn.",
    "The beauty of life lies in its imperfections.",
    "In every heartbeat, there is a song waiting to be sung.",
    "The stars in the sky are the dreams of yesterday and the hopes of tomorrow.",
    "Life is a canvas, and we are the artists who paint our destiny."
  ];

  List<String> list = [];

  @override
  void initState() {
    if (widget.shayariName == 'Nature  shayari') {
      list = natureShayari;
    } else if (widget.shayariName == 'Inspirational shayari') {
      list = inspirationalShayari;
    } else if (widget.shayariName == 'Birthday sharayi') {
      list = birthdayShayari;
    } else if (widget.shayariName == 'Motivational shayari') {
      list = motivationShayari;
    } else if (widget.shayariName == 'Success shayari') {
      list = successShayari;
    } else if (widget.shayariName == 'Friendship shayari') {
      list = friendshipShayari;
    } else if (widget.shayariName == 'Anniversary shayari') {
      list = anniversaryShayari;
    } else if (widget.shayariName == 'Attitude shayari') {
      list = attitudeShayari;
    } else if (widget.shayariName == 'Sad shayari') {
      list = sadShayari;
    } else if (widget.shayariName == 'heart shayari') {
      list = heartShayari;
    } else if (widget.shayariName == 'Sharo shayari') {
      list = sharoShayari;
    } else if (widget.shayariName == 'Eyes shayari') {
      list = eyesShayari;
    } else if (widget.shayariName == 'Boys shayari') {
      list = boysShayari;
    } else if (widget.shayariName == 'Other shayari') {
      list = otherShayari;
    }
    print(widget.shayariName);

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Card(
          elevation: 10,
          child: Center(
            child: Text(
              widget.shayariName,
              style: TextStyle(fontSize: 35),
            ),
          ),
          color: Colors.lightBlueAccent,
        ),
      ),
      body: Card(
        margin: EdgeInsets.all(10),
        color: Colors.white70,
        elevation: 10,
        child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Get.to(SubShayariPage(list, index),duration: Duration(seconds: 1)); // Redirect page same as Navigator
                },
                child: Card(
                  margin: EdgeInsets.all(10),
                  elevation: 20,
                  shadowColor: Colors.tealAccent,
                  child: Center(
                    child: Text(
                      list[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.brown),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
