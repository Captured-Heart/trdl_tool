import 'package:trdl_tool/all_imports.dart';

class AanvangWerkzaamhedenAchtergrond extends StatelessWidget {
  const AanvangWerkzaamhedenAchtergrond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
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
              //Fouten in de WBI Card
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: TitleText(
                              title: 'Aanvang werkzaamheden',
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
                                  'In de voorbereiding naar de uitvoering van werkzaamheden aan de railinfrastructuur worden de volgende stappen doorlopen:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Voor aanvang van de werkzaamheden geeft de LWB aan dat hij wil gaan werken;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Je mag, na overleg met de LWB, meewerken aan vooraf plaatsen van materieel ten behoeve van werkzaamheden in de aangeduide werkplek;',
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
                                  'Je overtuigt jezelf ervan dat vooraf toegelaten materieel tot stilstand is gekomen binnen de aangeduide werkplek.',
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
                                  'Bij aanvang van de werkzaamheden stel je zelf of via jouw buurtreindienstleider vast of zich treinen in de buitendienststelling bevinden anders dan die volgens het WBI/WECO zijn toegestaan, uitgezonderd materieel ten behoeve van de werkzaamheden. Daarnaast stel je vast of de buurtreindienstleider zijn maatregelen volgens het WBI/WECO heeft genomen. Jij hebt de bevoegdheid om voorrang te verlenen aan deze controle en mag hiervoor dus treinen vertragen en registreert de ontstane vertragingen onder vermelding van het WBI-nummer.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Buiten dienst stellen',
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
                                  'Als de LWB buitendienst wil volgens de WBI, dan neemt deze bij de aanvangstijd van betreffende periode contact op met jou - de (communicerend) treindienstleider. Je controleert of er geen treinbewegingen meer gaande zijn in of naar het buitendienst te stellen gebied.',
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
                                  'Als het spoor schoon is, neem je de afgesproken veiligheidsmaatregelen, zoals deze in het WBI vermeld staan. Als de buitendienststelling van het WBI ook de sporen van anderen treindienstleiders betreft, stel je vast of de buurtreindienstleider zijn maatregelen volgens het WBI/WECO heeft genomen. Jij hebt de bevoegdheid om voorrang te verlenen aan deze controle en mag hiervoor dus treinen vertragen en registreert de ontstane vertragingen onder vermelding van het WBI-nummer.',
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
                                  'Je bent nu klaar om de railinfracapaciteit, benoemd op het WBI/WECO, ter beschikking te stellen aan de LWB. Je geeft toestemming aan de LWB om zijn werkzaamheden aan te vangen voor de betreffende periode van WBI die geldt voor deze werkzaamheden. De LWB en jij tekenen dan gezamenlijk de juiste periode op de WBI/WECO af.',
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
                                  'Hierna is het aan de LWB om de veiligheidsmaatregelen buiten te nemen, zoals het plaatsen of activeren van de zelfsignalerende kortsluitlansen. Op verzoek van de LWB verleen je assistentie bij de veiligheidsmaatregelen die de LWB neemt. Hiervoor hef je, indien nodig, eenmalig de daarvoor aangewezen veiligheidsmaatregelen op. Breng deze weer aan, nadat de LWB zijn maatregelen heeft genomen.',
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
                                  'Na het plaatsen van de maatregelen van de LWB is het spoor officieel buitendienst.',
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
                                  'De LWB geeft nu toestemming aan de werklieden buiten dat zij het spoor mogen betreden.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 300.0,
                            child: Image.asset(
                              'assets/images/achtergrond/werkzaamhedenSpoor.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle:
                                  'Werkplekbeveiliging met zelfsignalerende kortsluitlans (ZKL) i.c.m. rijweginstelling',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Algemene voorwaarden:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Rijweginstelling vanaf de vrije baan is toegestaan als deze buiten dienst is;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- De railinfracapaciteit is beschikbaar gesteld aan de LWB voor werkzaamheden;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- ZKL in de eerste sectie achter het sein.',
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
                                  'Voorwaarden bij rijweginstelling met normaal seinbeeld:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Gebruik van ZKL.',
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
                                  'Voorwaarden bij rijweginstelling met normaal seinbeeld:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Gebruik van ZKL mét remote control (afstandsbediening);',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Alleen toegepast als er geen rijweginstelling met geel knipperend seinbeeld mogelijk is.',
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
                                  'Na het beschikbaar stellen van de railinfracapaciteit voor werkzaamheden middels het aftekenen van het WECO, vraagt de LWB je om mee te werken aan zijn werkplekbeveiliging met ZKL.',
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
                                  'De volgende stappen worden hierbij doorlopen:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '1. Rijweginstelling',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  'a. met geel knipperend seinbeeld - de LWB plaatst de ZKL in de eerste sectie achter het sein; of',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  'b. met normaal seinbeeld - de LWB plaatst de ZKL met remote control in de eerste sectie achter het sein en schakelt deze in de stand \'niet geleidend\';',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '2. De LWB verlaat het spoor en stelt zich buiten PVR op met zicht op het sein;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '3. Je verhindert rijweginstelling naar het betrokken sein indien noodzakelijk;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '4. Je stelt vast, indien nodig met hulp van de LWB, of zich op het spoor voor het betrokken sein een trein of rangeerdeel met machinist bevindt. Als dit het geval is neem je, eventueel met hulp van de LWB, contact op met deze machinist. Je geeft de machinist de opdracht om stil te blijven staan;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '5. Je stelt op verzoek van de LWB de rijweg in;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '6. Indien van toepassing schakelt de LWB de ZKL met remote control in de stand \'geleidend\';',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '7. Je herroept op verzoek van de LWB de rijweg;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '8. De LWB controleert de juiste stand van de wissels;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '9. Je verwijdert verhinderingen naar het betrokken sein als deze door jou zijn aangebracht;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '10. Je informeert indien van toepassing de machinisten.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //Beproeven Infra Card
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: TitleText(
                              title: 'Beproeven infra-elementen',
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
                                  'Tijdens de werkzaamheden kan de LWB aan de treindienstleider vragen of deze infra-elementen, die in de buitendienststelling liggen, wil beproeven. Als de LWB hiervoor je medewerking vraagt, mag je hieraan medewerking verlenen.',
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
                                  'Tijdens het beproeven van infra-elementen mogen zich geen railvoertuigen bevinden op of in de sectie van dit element.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: TitleText(
                              title: 'Uitloop werkzaamheden',
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
                                  'De treinenloop is in de planning aangepast op geplande werkzaamheden. Dat wil zeggen dat er geen reguliere treinbewegingen gepland zijn in het gebied dat buiten dienst gaat. Het kan echter zo zijn dat de geplande werkzaamheden niet op tijd afgerond kunnen worden. Dit kan verschillende redenen hebben, denk hierbij aan:',
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
                                  'Als het spoor schoon is, neem je de afgesproken veiligheidsmaatregelen, zoals deze in het WBI vermeld staan. Als de buitendienststelling van het WBI ook de sporen van anderen treindienstleiders betreft, stel je vast of de buurtreindienstleider zijn maatregelen volgens het WBI/WECO heeft genomen. Jij hebt de bevoegdheid om voorrang te verlenen aan deze controle en mag hiervoor dus treinen vertragen en registreert de ontstane vertragingen onder vermelding van het WBI-nummer.',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- De werkzaamheden zijn later aangevangen dan gepland;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Tijdens de werkzaamheden treden storingen op die niet op tijd hersteld kunnen worden;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Weersomstandigheden zorgen ervoor dat het werk tussentijds onderbroken moet worden;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Etc.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle:
                                  'Wat is het risico bij werkzaamheden die uitlopen?',
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
                                  'Soms staan de eerste (reizigers)treinen opgesteld in de buitendienststelling. Dit staat vermeld op de WBI/WECO. Het vertrek van deze treinen is vaak zeer kort na afloop van de geplande werkzaamheden. Wanneer werkzaamheden uitlopen betekent dit dat ARI de rijwegen voor deze treinen gewoon in kan stellen, ondanks dat het spoor nog buiten dienst is. Dit kan tot gevolg hebben dat een sein in de buitendienststelling veilig wordt gezet en de trein kan gaan rijden, een zeer onwenselijke en gevaarlijke situatie!',
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
                                  'Wanneer je als treindienstleider (van de LWB) de melding krijgt dat werkzaamheden uit gaan lopen, zijn een aantal zaken van belang:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '- Vraag goed uit hoe lang de uitloop gaat zijn.',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  'Het is van belang te weten hoeveel extra tijd de LWB nodig heeft om de werkzaamheden af te ronden, om een goede inschatting te maken wat de invloed op het treinverkeer is;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '- Neem maatregelen om onveilige situaties te voorkomen.',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  'Soms staan de eerste (reizigers)treinen opgesteld in de buitendienststelling. Dit staat vermeld op de WBI/WECO. Deze treinen staan vaak gepland voor vertrek zeer kort na afloop van de geplande werkzaamheden. Wanneer werkzaamheden uitlopen betekent dit dat procesleiding de rijwegen voor deze treinen gewoon in kan stellen, ondanks dat het spoor nog buiten dienst is. Dit kan tot gevolg hebben dat een sein in de buitendienststelling veilig wordt gezet en de trein gaat rijden, een zeer onwenselijke en gevaarlijke situatie! Wanneer je de melding krijgt van uitloop van werkzaamheden is het daarom van belang dat je goed kijkt of Procesleiding rijwegen binnen de buitendienststelling veilig kan zetten en dat je maatregelen neemt om dit te voorkomen. Je kunt dit bijvoorbeeld doen door of door een verhinderingsmaatregel te plaatsen;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '- Meld de uitloop van de werkzaamheden aan de DVL en de OvD-V.',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  'Samen met de DVL bepaal je de gevolgen die de uitloop heeft voor de opstart van het treinverkeer. De DVL kan dit melden aan vervoerders, zodat eventueel treinen kunnen worden opgeheven of omgeleid. Licht ook de OvD-V in;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '- Meld de uitloop van de werkzaamheden aan de Meldkamer spoor/ Backoffice.',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  'Net als iedere onregelmatigheid die gevolgen heeft voor de treindienst, meld je ook deze situatie bij de Meldkamer Spoor/ Backoffice.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Beëindiging werkzaamheden',
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
                                  'Op het moment dat de werkzaamheden zijn afgerond, zorgt de LWB ervoor dat het buitendienst gestelde spoor helemaal vrij is van personen en materieel. Daarna verwijdert hij de door hem geplaatste veiligheidsmaatregelen. Hij neemt contact op met je, deelt mede dat de infra van de buitendienststelling weer vrij en onbelemmerd is, en meldt dat de werkzaamheden gereed zijn.',
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
                                  'Na beëindiging van de werkzaamheden trekt de LWB in overleg met jou het WBI/WECO in en samen tekenen jullie de WBI/WECO af.',
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
                                  'Je heft de door jou geplaatste veiligheidsmaatregelen op, en neemt indien nodig contact op met betrokken buurtreindienstleiders om ook hun maatregelen op te heffen.',
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
                                  'Nu is het spoor weer in dienst en kan het treinverkeer weer normaal hervat worden.',
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
