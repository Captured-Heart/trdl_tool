import 'package:trdl_tool/all_imports.dart';

class ToelatenWerktreinenAchtergrond extends StatelessWidget {
  const ToelatenWerktreinenAchtergrond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(title: 'TRDLtool'),
        actions: const [
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /*CARD #1*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: TitleText(title: 'Toelaten werktreinen'),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle:
                                  'Toelating (werk)trein tot buitendienst gesteld gebied',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Alleen met toestemming van de leider werkplekbeveiliging mag je een (werk)trein toelaten op een buitendienst gesteld spoor. Je maakt dan afspraken met de leider werkplekbeveiliging over het toelaten van de werktrein, o.a. over spoorgebruik, binnen melden. In dit geval moet je eenmalig zijn veiligheidsmaatregelen opheffen en weer aanbrengen na het passeren van de (werk)trein. Een (werk)trein zal bij voorkeur met een aanwijzing STS toegelaten worden tot het buitendienst gestelde spoor. De reden hiervan is het ontbreken van blokverband en overgang trein naar werktrein m.b.t. taken en verantwoordelijkheden van de betrokken functionarissen.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Je maakt afspraken met de LWB over werktreinen, waarbij:',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- alleen de LWB treinen mag toelaten tot buitendienst gestelde sporen;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- alleen jij treinen mag toelaten op in dienst zijnde sporen.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'De LWB instrueert de begeleider buitendienst gesteld spoor (BBD) en (werktrein)machinist over:',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- De verplaatsingen van en de werkzaamheden uit te voeren met de werktrein;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- De communicatie;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- De aanwezigheid van mensen, obstakels en eventueel andere werktreinen;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- De voertuiginstructie (VTI);',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Bijzondere omstandigheden die van belang zijn voor het veilig rijden.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #2*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle:
                                  'Toelating (werk)trein tot in dienst gesteld gebied',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Alleen met jouw toestemming mag de (werk)trein toegelaten worden op een in dienst gesteld spoor. Indien een werktrein niet op seinbeeld de buitendienststelling kan verlaten zal je een aantal handelingen moeten verrichten om de trein uit het gebied te krijgen.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Dit doe je met behulp van een rijopdracht voor de machinist, waarbij je zorg draagt voor de veilige rijweg. Dit kan door middel van de W-route of het handmatig sturen en vastleggen van de infra-elementen die zich in het in dienst gesteld gebied bevinden en het uitsluiten van de tegengestelde rijweg. Voor het gebruik van de W-route dient de buitendienststelling wel met een VHR begrensd te zijn.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Indien nodig gebruik je het TOM-venster om een wissel in de juiste stand te sturen en vast te leggen.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'De rijopdracht voor de machinist is vergelijkbaar met een aanwijzing STS, echter staat de machinist niet voor een sein, maar op de grens van de buitendienststelling. Je controleert of de juiste machinist de rijopdracht krijgt, zich op de juiste locatie bevindt en je geeft de bijzonderheden aan in de route. Dit doe je door middel van de 3 u’s: U bent, U staat en U gaat. Vervolgens zal je de inhoudelijke gegevens benoemen die bij de STS horen. Je benoemt alleen de relevante punten.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Voorbeeld',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Nadat de veiligheidsmaatregelen zijn genomen voor de rijopdracht volgt het gesprek met de machinist (machinist herhaalt):',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: '\'U bent de machinist van trein 89663,',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'U staat voor wissel 257A in Eindhoven,',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'U gaat via wissel 257A rechtsleidend naar spoor Echo Bravo.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'De machinist van trein 89663 moet achter wissel 257A rijden op zicht, de wissels voorzichtig berijden met een snelheid van max. 10 km/h en rekening houden met het niet goed functioneren van de overwegen en krijgt bij deze een rijopdracht van de treindienstleider.\'',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Zodra de werktrein het gebied veilig heeft verlaten, zorg je ervoor dat de buitendienstelling is afgedekt conform afspraak (bijvoorbeeld door het wissel weer terug te leggen d.m.v. TOM-venster).',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
