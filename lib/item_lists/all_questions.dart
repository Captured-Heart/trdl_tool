class Question {
  late String questionText;
  late bool questionAnswer;
  Question(this.questionText, this.questionAnswer);
}

class QuestionBank {
  List<Question> questionBank = [
    Question(
      'Je hebt 1 minuut om zoveel mogelijk stellingen met \'waar\' of \'niet waar\' te beantwoorden. Ieder goed antwoord is +1 punt, maar ieder fout antwoord -2 punten! Zit je er klaar voor?',
      true,
    ),
    Question(
      'Een storingsmonteur mag pas aan een trein werken als de railinfracapaciteit met WECO aan hem beschikbaar is gesteld door de TRDL.',
      false,
    ),
    Question(
      'Bij gladde sporen meld je treinnummer, exacte locatie en geconstateerd bij remmen/tractie of beide.',
      true,
    ),
    Question(
      'Bij gedeeltelijke uitval spraakcommunicatie informeer je alleen de DVL.',
      false,
    ),
    Question(
      'Het GEVI nummer is het onderste nummer op een gevaaretiket.',
      false,
    ),
    Question(
      'Bij een groen sein mag een machinist altijd ten minste 80 km/u.',
      false,
    ),
    Question(
      'Een Hotbox melding geeft type alarm, asnummer, rechter- of linkerzijde en spoor.',
      true,
    ),
    Question(
      'Wissels vrijmaken mag als de LWB de verantwoordelijkheid van de sporen heeft overgedragen aan de TRDL.',
      false,
    ),
    Question(
      'Inhoudelijke informatie over een grendel of vrijgave vind je in de tekstuele BVS.',
      true,
    ),
    Question(
      'Een wissel dat niet in de eindstand komt, kan nog steeds opdrachten aannemen.',
      true,
    ),
    Question(
      'De machinist van een gestrande trein moet altijd de stroomafnemers laten zakken.',
      false,
    ),
    Question(
      'Als TROTS uitvalt, wacht je twee minuten op een automatische herstart.',
      true,
    ),
    Question(
      'Bij stilleggen treindienst laat je reizigerstreinen in het getroffen gebied stoppen langs het eerstvolgende perron.',
      true,
    ),
    Question('\'Begrepen\' is een correcte dienstuitdrukking.', false),
    Question(
      'Het verdelingsbesluit bij een infrabeperking wordt genomen door de VLC.',
      false,
    ),
    Question(
      'Een wissel met een hoekverhouding van 1:12 mag met 60 km/u worden bereden.',
      true,
    ),
    Question(
      'Een KIMO is een stel op VL post Alkmaar.',
      true,
    ),
  ];
}
