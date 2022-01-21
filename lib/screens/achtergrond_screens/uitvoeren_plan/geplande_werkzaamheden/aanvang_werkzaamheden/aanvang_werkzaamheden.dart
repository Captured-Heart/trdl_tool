import 'package:trdl_tool/core/all_imports.dart';

class AanvangWerkzaamhedenAchtergrond extends StatelessWidget {
  const AanvangWerkzaamhedenAchtergrond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Aanvang werkzaamheden',
        ),
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
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      TitleText(
                        title: 'Aanvang werkzaamheden',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'In de voorbereiding naar de uitvoering van werkzaamheden aan de railinfrastructuur worden de volgende stappen doorlopen:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Voor aanvang van de werkzaamheden geeft de LWB aan dat hij wil gaan werken;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Je mag, na overleg met de LWB, meewerken aan vooraf plaatsen van materieel ten behoeve van werkzaamheden in de aangeduide werkplek;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Je overtuigt jezelf ervan dat vooraf toegelaten materieel tot stilstand is gekomen binnen de aangeduide werkplek.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Bij aanvang van de werkzaamheden stel je zelf of via jouw buurtreindienstleider vast of zich bijzonderheden_trein in de buitendienststelling bevinden anders dan die volgens het WBI/WECO zijn toegestaan, uitgezonderd materieel ten behoeve van de werkzaamheden. Daarnaast stel je vast of de buurtreindienstleider zijn maatregelen volgens het WBI/WECO heeft genomen. Jij hebt de bevoegdheid om voorrang te verlenen aan deze controle en mag hiervoor dus bijzonderheden_trein vertragen en registreert de ontstane vertragingen onder vermelding van het WBI-nummer.',
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #2*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      SubTitleText(
                        subtitle: 'Buiten dienst stellen',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Als de LWB buitendienst wil volgens de WBI, dan neemt deze bij de aanvangstijd van betreffende periode contact op met jou - de (communicerend) treindienstleider. Je controleert of er geen treinbewegingen meer gaande zijn in of naar het buitendienst te stellen gebied.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Als het spoor schoon is, neem je de afgesproken veiligheidsmaatregelen, zoals deze in het WBI vermeld staan. Als de buitendienststelling van het WBI ook de sporen van anderen treindienstleiders betreft, stel je vast of de buurtreindienstleider zijn maatregelen volgens het WBI/WECO heeft genomen. Jij hebt de bevoegdheid om voorrang te verlenen aan deze controle en mag hiervoor dus bijzonderheden_trein vertragen en registreert de ontstane vertragingen onder vermelding van het WBI-nummer.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Je bent nu klaar om de railinfracapaciteit, benoemd op het WBI/WECO, ter beschikking te stellen aan de LWB. Je geeft toestemming aan de LWB om zijn werkzaamheden aan te vangen voor de betreffende periode van WBI die geldt voor deze werkzaamheden. De LWB en jij tekenen dan gezamenlijk de juiste periode op de WBI/WECO af.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Hierna is het aan de LWB om de veiligheidsmaatregelen buiten te nemen, zoals het plaatsen of activeren van de zelfsignalerende kortsluitlansen. Op verzoek van de LWB verleen je assistentie bij de veiligheidsmaatregelen die de LWB neemt. Hiervoor hef je, indien nodig, eenmalig de daarvoor aangewezen veiligheidsmaatregelen op. Breng deze weer aan, nadat de LWB zijn maatregelen heeft genomen.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Na het plaatsen van de maatregelen van de LWB is het spoor officieel buitendienst.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'De LWB geeft nu toestemming aan de werklieden buiten dat zij het spoor mogen betreden.',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image: 'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzaamhedenSpoor.png',
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #3*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      SubTitleText(
                        subtitle: 'Werkplekbeveiliging met zelfsignalerende kortsluitlans (ZKL) i.c.m. rijweginstelling',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Algemene voorwaarden:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Rijweginstelling vanaf de vrije baan is toegestaan als deze buiten dienst is;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- De railinfracapaciteit is beschikbaar gesteld aan de LWB voor werkzaamheden;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- ZKL in de eerste sectie achter het sein.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Voorwaarden bij rijweginstelling met normaal seinbeeld:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Gebruik van ZKL.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Voorwaarden bij rijweginstelling met normaal seinbeeld:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Gebruik van ZKL mét remote control (afstandsbediening);',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Alleen toegepast als er geen rijweginstelling met geel knipperend seinbeeld mogelijk is.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Na het beschikbaar stellen van de railinfracapaciteit voor werkzaamheden middels het aftekenen van het WECO, vraagt de LWB je om mee te werken aan zijn werkplekbeveiliging met ZKL.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'De volgende stappen worden hierbij doorlopen:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '1. Rijweginstelling',
                      ),
                      BodyText(
                        indents: 2,
                        text: 'a. met geel knipperend seinbeeld - de LWB plaatst de ZKL in de eerste sectie achter het sein; of',
                      ),
                      BodyText(
                        indents: 2,
                        text: 'b. met normaal seinbeeld - de LWB plaatst de ZKL met remote control in de eerste sectie achter het sein en schakelt deze in de stand \'niet geleidend\';',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '2. De LWB verlaat het spoor en stelt zich buiten PVR op met zicht op het sein;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '3. Je verhindert rijweginstelling naar het betrokken sein indien noodzakelijk;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '4. Je stelt vast, indien nodig met hulp van de LWB, of zich op het spoor voor het betrokken sein een trein of rangeerdeel met machinist bevindt. Als dit het geval is neem je, eventueel met hulp van de LWB, contact op met deze machinist. Je geeft de machinist de opdracht om stil te blijven staan;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '5. Je stelt op verzoek van de LWB de rijweg in;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '6. Indien van toepassing schakelt de LWB de ZKL met remote control in de stand \'geleidend\';',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '7. Je herroept op verzoek van de LWB de rijweg;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '8. De LWB controleert de juiste stand van de wissels;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '9. Je verwijdert verhinderingen naar het betrokken sein als deze door jou zijn aangebracht;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '10. Je informeert indien van toepassing de machinisten.',
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #4*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      SubTitleText(
                        subtitle: 'Beproeven infra-elementen',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Tijdens de werkzaamheden kan de LWB aan de treindienstleider vragen of deze infra-elementen, die in de buitendienststelling liggen, wil beproeven. Als de LWB hiervoor je medewerking vraagt, mag je hieraan medewerking verlenen.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Tijdens het beproeven van infra-elementen mogen zich geen railvoertuigen bevinden op of in de sectie van dit element.',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Uitloop werkzaamheden',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'De treinenloop is in de planning aangepast op geplande werkzaamheden. Dat wil zeggen dat er geen reguliere treinbewegingen gepland zijn in het gebied dat buiten dienst gaat. Het kan echter zo zijn dat de geplande werkzaamheden niet op tijd afgerond kunnen worden. Dit kan verschillende redenen hebben, denk hierbij aan:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- De werkzaamheden zijn later aangevangen dan gepland;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Tijdens de werkzaamheden treden storingen op die niet op tijd hersteld kunnen worden;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Weersomstandigheden zorgen ervoor dat het werk tussentijds onderbroken moet worden;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Etc.',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Wat is het risico bij werkzaamheden die uitlopen?',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Soms staan de eerste (reizigers)bijzonderheden_trein opgesteld in de buitendienststelling. Dit staat vermeld op de WBI/WECO. Het vertrek van deze bijzonderheden_trein is vaak zeer kort na afloop van de geplande werkzaamheden. Wanneer werkzaamheden uitlopen betekent dit dat ARI de rijwegen voor deze bijzonderheden_trein gewoon in kan stellen, ondanks dat het spoor nog buiten dienst is. Dit kan tot gevolg hebben dat een sein in de buitendienststelling veilig wordt gezet en de trein kan gaan rijden, een zeer onwenselijke en gevaarlijke situatie!',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Wanneer je als treindienstleider (van de LWB) de melding krijgt dat werkzaamheden uit gaan lopen, zijn een aantal zaken van belang:',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: '- Vraag goed uit hoe lang de uitloop gaat zijn.',
                      ),
                      BodyText(
                        indents: 1,
                        text: 'Het is van belang te weten hoeveel extra tijd de LWB nodig heeft om de werkzaamheden af te ronden, om een goede inschatting te maken wat de invloed op het treinverkeer is;',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: '- Neem maatregelen om onveilige situaties te voorkomen.',
                      ),
                      BodyText(
                        indents: 1,
                        text: 'Soms staan de eerste (reizigers)bijzonderheden_trein opgesteld in de buitendienststelling. Dit staat vermeld op de WBI/WECO. Deze bijzonderheden_trein staan vaak gepland voor vertrek zeer kort na afloop van de geplande werkzaamheden. Wanneer werkzaamheden uitlopen betekent dit dat procesleiding de rijwegen voor deze bijzonderheden_trein gewoon in kan stellen, ondanks dat het spoor nog buiten dienst is. Dit kan tot gevolg hebben dat een sein in de buitendienststelling veilig wordt gezet en de trein gaat rijden, een zeer onwenselijke en gevaarlijke situatie! Wanneer je de melding krijgt van uitloop van werkzaamheden is het daarom van belang dat je goed kijkt of Procesleiding rijwegen binnen de buitendienststelling veilig kan zetten en dat je maatregelen neemt om dit te voorkomen. Je kunt dit bijvoorbeeld doen door of door een verhinderingsmaatregel te plaatsen;',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: '- Meld de uitloop van de werkzaamheden aan de DVL en de OvD-V.',
                      ),
                      BodyText(
                        indents: 1,
                        text: 'Samen met de DVL bepaal je de gevolgen die de uitloop heeft voor de opstart van het treinverkeer. De DVL kan dit melden aan vervoerders, zodat eventueel bijzonderheden_trein kunnen worden opgeheven of omgeleid. Licht ook de OvD-V in;',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: '- Meld de uitloop van de werkzaamheden aan de Meldkamer spoor/ Backoffice.',
                      ),
                      BodyText(
                        indents: 1,
                        text: 'Net als iedere onregelmatigheid die gevolgen heeft voor de treindienst, meld je ook deze situatie bij de Meldkamer Spoor/ Backoffice.',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Beëindiging werkzaamheden',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Op het moment dat de werkzaamheden zijn afgerond, zorgt de LWB ervoor dat het buitendienst gestelde spoor helemaal vrij is van personen en materieel. Daarna verwijdert hij de door hem geplaatste veiligheidsmaatregelen. Hij neemt contact op met je, deelt mede dat de infra van de buitendienststelling weer vrij en onbelemmerd is, en meldt dat de werkzaamheden gereed zijn.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Na beëindiging van de werkzaamheden trekt de LWB in overleg met jou het WBI/WECO in en samen tekenen jullie de WBI/WECO af.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Je heft de door jou geplaatste veiligheidsmaatregelen op, en neemt indien nodig contact op met betrokken buurtreindienstleiders om ook hun maatregelen op te heffen.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Nu is het spoor weer in dienst en kan het treinverkeer weer normaal hervat worden.',
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
