class Question {
  String question, a, b, c, d;
  static bool done = false; 
  static Map<int,int> answers = <int,int>{};
  static getMap() {
    Map ret = <String,String>{};
    answers.forEach((key, value) {
      switch (value) {
        case 0:
          ret[questions[key].question] = questions[key].a;
          break;
        case 1:
          ret[questions[key].question] = questions[key].b;
          break;
        case 2:
          ret[questions[key].question] = questions[key].c;
          break;
        case 3:
          ret[questions[key].question] = questions[key].d;
          break;
      }
    });
    return ret;
  }

  Question(this.question,this.a,this.b,this.c,this.d);
}

List<Question> questions = [
    Question("Are you good at following rules ?",
    "yes, I'll never break a rule of code",
    "yes, I always do what is expected",
    "mmm, I don't like rules, but I'll try to follow",
    "Anarchy!!"),
    Question("Are you good at math ?", 
    "yes! I am a human calculator", 
    "I have a degree in mathematics", 
    "yes, I can normally figure out a math problem", 
    "no. Sometimes I can't even count right"),
    Question("Are you religious ?", 
    "yes. I go to church weekly and I volunteer there", 
    "I go to church sometimes, but I definetly believe", 
    "I am athiest", 
    "I am agnostic"),
    Question("Are you a night owl ?", 
    "I think nocturnal is more appropriate", 
    "yes. I am more awake at night", 
    "I go to bed at midnight", 
    "I'd rather be in bed by 8"),
    Question("Is your sleep schedule consistent ?", 
    "yes. Every night and morning is the same!", 
    "i try to be, but my job makes that hard",
    "It fluctuates for sure", 
    "no. I get invested in what i'm doing and forget about sleeping."),
    Question("Do you enjoy art?","yes! I create it and surround myself with it.",
    "yes. Art is an emotional outlet for me.",
    "its okay. Art museums can be cool.",
    "honestly, i don't notice art."),
    Question("Do you create art?",
    "yes! I love experimenting with different media to create my vision.",
    "i think so. I like to dance and i enjoy decorating.",
    "I play an instrument, does that count?",
    "no. Not my thing."),
    Question("Do you enjoy slow or fast paced?",
    "fast paced, i like being busy, and I enjoy fast paced activities too.",
    "i drive fast and i skate fast, but other than that I prefer to chill",
    "i would prefer a slow pace, but I always have so much to do.",
    "a sloth is my spirit animal"),
    Question("At the end of a busy day, do you want alone time?",
    "yes! Please go away. I need my bubble bath.",
    "yes. I need a little alone time everyday to recharge.",
    "it depends. Alone with my significant other would be fine.",
    "no. I like interacting with others. I don't need to be alone."),
    Question("Do you volunteer?",
    "yes. I volunteer weekly. It's important to me.",
    "yes. I try to volunteer once a month.",
    "no, but I donate money.",
    "no...i have enough of my own problems to sort through"),
    Question("Do you have strong empathy?",
    "yes. I'm totally an empath. I feel everything.",
    "i get excited when my friends are excited and i get sad when they are sad.",
    " sometimes i get excited for others",
    " i don't really feel others feelings. Only on rare occasion."),
    Question("Do you have strong sympathy?",
    " i think i am good at understanding someone's situation and seeing while they feel that way",
    "i feel like i do. I try to. I want to help.",
    "probably. I don't really think about it.",
    "no sympathy from me"),
    Question("Are you creative?",
    "yes. I'm the most creative person I know. I have new ideas and inventions all the time.",
    "i am very artsy. I create things that i come up wit",
    "i love taking landscape photos. Cosplay is super fun! Learning songs is enjoyable too.",
    " not really. I am a movie buff though!"),
    Question("Are you consistent?",
    "yes. Consistent and reliable. No one questions that",
    "i always go to my job, and i'm there for my friends. I try to always answer my phone.",
    "yes and no. I'm kind of a free spirit.",
    " consistently all over the place, yeah."),
    Question("Are you okay talking to strangers?",
    "i could meet a group of strangers and befriend them all.",
    "of course! If i like their hat, i'm going to tell them!",
    "i'm okay with calling the store if i need to ask a question.",
    "nope. Avoid at all costs."),
    Question("How to you feel in a crowd?",
    "love it! Love the energy! Especially at a concert!",
    "it's fine. Doesn't bother me any.",
    "i guess i don't mind it. Depends on the environment.",
    "social anxiety, so no thank you"),
    Question("How do you feel when many guests are in your home?",
    "awesome! I love hosting!",
    "i enjoy parties sometimes!",
    "only if i know everyone.",
    "....please go away."),
    Question("Are you a night owl?",
    "i think nocturnal is more appropriate.",
    "yes. I am more awake at night.",
    "i go to bed at midnight.",
    "i'd rather be in bed by 8."),
    Question("Is your sleep schedule consistent?",
    "yes. Every night and morning is the same!",
    "i try to be, but my job makes that hard.",
    "it fluctuates for sure.",
    "no. I get invested in what i'm doing and forget about sleeping."),
    Question("Do you enjoy mornings?",
    "yes!! Perfect time to get stuff done.",
    "yes, with coffee.",
    "depends on how much sleep i got. But not really.",
    "does 1pm count as the morning?"),
    Question("Do rules and instructions help you?",
    "yes. I feel better with concrete guidance.",
    "yes. We'd be lost without them.",
    "sometimes they are good, and sometimes they are unreasonable.",
    "i never read instructions. Just wing it.")
];