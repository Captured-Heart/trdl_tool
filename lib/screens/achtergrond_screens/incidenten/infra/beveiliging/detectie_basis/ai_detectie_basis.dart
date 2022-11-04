import '/all_imports.dart';

class AIDetectieBasis extends StatelessWidget {
  const AIDetectieBasis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIDetectieBasisNavigation(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const <TextCard>[
              TextCard(
                widgetList: <Widget>[
                  TitleText(
                    title: 'Detectie Basisinformatie',
                  ),
                  SizedBoxH(),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Introductie spoorstroomloop',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Een spoorstroomloop is een stroomkring in een spoorweg die gebruikt wordt voor de detectie van treinen. Treindetectie is nodig voor rijwegbeveiliging en blokbeveiliging, die voorkomen dat treinen naar eenzelfde spoor geleid kunnen worden en onderling botsen. Ook overwegen kunnen worden aangestuurd door spoorstroomlopen. Via spoorstroomlopen kan ook informatie voor treinbeïnvloedingssystemen worden doorgegeven.\nDe wielstellen van een trein sluiten de spoorstroomloop kort, waardoor de spoorstroomloop onderbroken wordt. Een onderbroken spoorstroomloop duidt er dus op dat de spoorsectie bezet is door een trein. Een spoorstroomloop die intact is, geeft aan dat de spoorsectie vrij is.\n​​​​​​​Het is de oudste vorm van treindetectie en wordt in België en Nederland nog veel gebruikt.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Het ruststroomprincipe',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Het spoor is verdeeld in stukken. Deze stukken spoor worden gescheiden door een stukje isolatiemateriaal, dit noemen we elektrische scheidingslassen (ES lassen). Hierdoor ontstaan verschillende secties in het spoor (geïsoleerd spoor). We maken onderscheid in de verdeling van het spoor tussen blokken en secties:',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        '- Een blok is het gedeelte spoor op de vrije baan tussen twee opvolgende seinen;\n- Een sectie is het gedeelte spoor tussen twee ES lassen.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Bij het ruststroomprincipe laat men door een sectie stroom lopen (12 volt gelijkstroom). In deze stroomkring zit ook een relais. Dit relais werkt als een soort lichtschakelaar; als er stroom aanwezig is, is het relais aangetrokken (licht is aan). Wordt deze stroomkring doorbroken door de as van de trein, ontstaat er kortsluiting en valt het relais af (licht is uit). Hierdoor kan men zien waar de trein is.\nAlles wat wordt verbonden met dit relais zal dus reageren op kortsluiting in de stroomkring. Een nadeel hiervan is dat alles wat geleid en op het spoor terecht komt ook gevolgen heeft. Doordat er dan ook kortsluiting ontstaat, ziet de beveiliging dit als een spoorbezetting en valt het relais af.\nEen blok kan verdeeld zijn in meerdere secties of gelijk zijn aan een sectie. Het blok is bezet als er spoorbezetting is in een of meerdere secties.',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_detectie_basis_1.png',
                  ),
                  BodyText(
                    indents: 0,
                    text: 'Relais',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_detectie_basis_2.gif',
                  ),
                  BodyText(
                    indents: 0,
                    text: 'Stroomkring',
                  ),
                  SizedBoxH(),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Prikspanningspoorstroomloop',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Bij een spoorstroomloop helpt de retourstroom van elektrisch materieel mee bij een goede treindetectie. Niet-elektrisch materieel met een lage asdruk en goede loopeigenschappen kan echter detetieproblemn veroorzaken op sporen met een roestlaagje. Op de spoorstroomloop wordt dan een pulserende hogere spanning gezet (ongeveer zoals bij schrikdraad), die door het roestlaagje \'heenprikt\'.\n\nEen prikspanningspoorstroomloop (PSSSL) wordt voornamelijk gebruikt bij stations. Het systeem is te herkennen aan witte, rechthoekige kastjes bij het spoor. PSSSL wordt ook vaakgebruikt om de spoorstroomloop op weinig bereden sporen e verbeteren (bijv. emplacementen). Bij Nederlandse overwegen in PSSSL-gebieden stonden gele waarschuwingsbordjes met de tekst \'Dierbegeleiders opgelet: spoor kan onder spanning staa"\'.Inmiddels is PSSSL bij overwegen verwijderd om schrikreacties bij dieren te voorkomen. Let op: bij roestvorming op PSSSL-spoor geldt een afwijkende afhandeling.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_detectie_basis_3.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'PSSSL-kastje\n\nVan de prikspanningspoorstroomloop is slechts het witte kastje als fysiek object buiten waar te nemen.',
                  ),
                  SizedBoxH(),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Assentellers',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Assentellers zijn apparaten die worden toegepast voor treindetectie. Een zwak punt van de treindetectie met behulp van spoorstroomlopen is dat externe factoren, zoals de elektrische weerstand van de ballast en verontreiniging van het railoppervlak, een nadelige invloed kunnen hebben op de werking van het systeem. Hierdoor ontstaan o.a. de noodzaak van het roestrijdrgime en de probleen in de herfst als gevolg van bladval. Het systeem kan falen, wanneer de treinwielen onvoldoende kortsluiting veroorzaken tussen de twee spoorstaven. Dit is steeds vaker het geval bij het nieuwe \'lichte materieel\' wat gebruikt wordt voor personenvervoer op zowel het hoofdnet als de nevenlijnen. Een ander punt is dat het systeem niet werkt bij toepassing van 25 kV wisselspanning voor de tractievoeding en de noodzaak voor toepassing van ES-lassen om secties elektrisch van elkaar te scheiden.\nHet assentelsysteem gebruikt het aantal treinwielen dat zich in een sectie bevindt als maat voor het vrij of bezet zijn van een sectie. Daartoe bevind" zich aan het begin en einde van elke sectie een telpunt dat met behulp van een magnetisch veld het aantal wielen telt dat een sectie in- of uitrijdt.\nVoordelen zijn dat de treindetectie niet wordt beïnvloed door:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Lengte van een spoorsectie;\n- Vuil of roest op de spoorstaaf;\n- Elektrische weerstand van de ballast en/of treinas.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text: 'Nadelen zijn:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Het systeem detecteert niet continu: enkel op bepaalde punten in het spoor worden treinen gedetecteerd;\n- Na een storing moeten extra veiligheidshandelingen uitgevoerd worden. (Het aantal assen moet door een reset weer op nul gesteld worden);\n- Het systeem detecteert geen spoorstaafbreuk. Bij geïsoleerd spoor heeft een spoorstaafbreuk wel vaak tot gevolg dat het beveiligingsrelais afvalt (sein op rood).',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Een assenteller is een sensor die vrijwel op de spoorstaaf wordt gemonteerd. De sensor meet het magnetisch veld. Als er een treinwiel voorbijkomt, wordt het magnetisch veld verstoord en daarmee wordt de betreffende as geteld. Het aantal assen bij het begin van de bloksectie wordt door de apparatuur vergeleken met het aantal getelde assen aan het eind van de bloksectie. Als er evenveel assen zijn geteld, wordt het blok als veilig beschouwd. Als er een verschil wordt geconstateerd, wordt het blok als niet-veilig beschouwd.',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'Assenteller systemen en typen',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Assentelsysteem Az L90-4 (Thales);\n- Assentelsysteem SCA-2 (GE/Alstom);\n- Assentelsysteem Az LM (Thales);\n- Assentelsysteem Az LM (GAST-NL 2019) (Thales)',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Assentelsystemen zijn in basis gelijk waarbij Az LM (GAST-NL 2019) voortgekomen is uit aanbesteding die is afgerond in 2019.',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'Opbouw en functie van de assentelsystemen',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Het assentelsysteem heeft als doel de aanwezigheid van een trein in één of meerdere secties te detecteren. Het wel of niet aanwezig zijn van een trein in een sectie, de sectiestatus, geeft het systeem door aan de beveiliging, zie afbeelding:',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_detectie_basis_4.png',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'Componenten',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Het assentellersysteem bestaat uit de volgende componenten.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Telpunt. Bestaat uit een dubbel railcontact of dubbele wieldetector die aan de spoorstaaf bevestigd zijn;\n- Aansluitkast (AK). Geel electronicakastje naast het spoor.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Ieder(e) telpunt of wieldetector detecteert de wielen van een trein twee keer om zo de rijrichting van de trein te kunnen bepalen.\nDeze informatie wordt doorgegeven  naar de telcomputer (ACU/AZA/ACE) die de tellerstanden van het aantal gepasseerde wielen bijhoudt. Deze telcomputer bevindt zich in een relaishuis en bepaalt of een sectie bezet of niet bezet is op basis van de informatie van de telpunten. Dit wordt aan de beveiliging doorgegeven.',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_detectie_basis_5.png',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_detectie_basis_6.png',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'Trilling en sectie status',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Eén telpunt of wieldetector wordt veelal gebruikt voor twee (de voorgaande en de opvolgende) of meerdere secties. De telcomputer houdt voor alle geconfigureerde secties het aantal ingereden en uitgereden wielen bij. Afhankelijk van de rijrichting van de trein ten opzichte van een van tevoren gedefinieerde rijrichting (assentelreferentierichting) wordt de telstand van de sectie opgehoogd of verlaagd. Rijdt de trein in de andere richting over het railcontact, dan wordt andersom geteld. In de telcomputer is per sectie vastgelegd of een ophoging of een verlaging van de telstand in het telpunt overeenkomt met het inrijden van een treinwiel of met het uitrijden.\nDe telcomputer van het assentelsysteem bepaalt continu de status van alle geconfigureerde secties aan de hand van een telstand per sectie en gegevens over de werking van de installatie. De mogelijke statussen zijn:',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Vrij',
                  ),
                  BodyText(
                    indents: 0,
                    text: "Een sectie krijgt de status 'vrij' als:",
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        '- Het aantal treinwielen dat zich volgens de telcomputer in de sectie bevindt gelijk is aan nul;\n- Er geen storingen zijn waargenomen.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Bezet',
                  ),
                  BodyText(
                    indents: 0,
                    text: "Een sectie krijgt de status 'bezet' als:",
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        '- Het aantal treinwielen dat zich volgens de telcomputer in de sectie bevindt groter is dan nul;\n- Er geen storingen zijn wargenomen.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Gestoord',
                  ),
                  BodyText(
                    indents: 0,
                    text: "Een sectie krijgt de status 'gestoord' als:",
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        '- De telcomputer (opnieuw) opgestart wordt of defect is;\n- Een telpunt, behorende bij de sectie, opgestart wordt of defect is;\n- De verbinding tussen input van de telcomputer en telpunten gestoord is;\n- Het berekende aantal treinwielen in de sectie negatief is.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Voor de TRDL is het onderscheid tussen bezet en gestoord niet zichtbaar. Beide statussen van een sectie leiden tot bezet spoor in de beveiliging.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Diagnose',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'De telcomputers zijn uitgerust met een diagnoseprogramma, dat in de systeemsoftware is opgenomen. Het diagnoseprogramma kan gebruikt worden voor:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Het uitlezen van interne statusinformatie;\n- Het opvragen van diagnosegegevens;\n- Het verrichten van een meting van de kwaliteit van de verbinding"met de telpunten.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Fern Wirk Schirm',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "De Fern Wirk Schirm (FWS) is een bedienterminal van het assentellersysteem waarop de status van de secties te zien is en waarmee commando's ingevoerd kunnen worden. Deze FWS'n staan langs de baan in de relaishuizen, op sommige TRDLposten en bij het OBI.\nMet dit systeem kan men voorwaardelijke en harde resetten uitvoeren wanneer een of meerdere secties gestoord zijn.",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext:
                        'Relatie treindetectiesysteem en beveiligingsmiddelen',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'De (zelfsignalerende)kortsluitlans en de kortsluitkabel zijn niet toepasbaar als werkplekbeveiligingsmiddel op baanvakken met een assenteller beveiliging. Bij werkzaamheden maakt men gebruik van technische maatregelen in het relaishuis (sectie bezet zetten).',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Werkplekbeveiliging',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'De (zelfsignalerende)kortsluitlans en de kortsluitkabel zijn niet toepasbaar als werkplekbeveiligingsmiddel op baanvakken met een assenteller beveiliging. Bij werkzaamheden maakt men gebruik van technische maatregelen in het relaishuis middels werkzonebeveiliging.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Storingen',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'In een normale situatie (geen storingen, geen telfouten) gedraagt de treindetectie met assentellers zich in principe zoals treindetectie met spoorstroomlopen.\nStoringen veroorzaakt door defecte apparatuur:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Een telpunt of wieldetector is defect of de communicatie tussen de telcomputer(AZA, ACU of ACE) en telpunt of wieldetector valt weg. Hierdoor tonen er in de regel twee of meerdere secties tegelijk bezet (TOBS). In het assentelsysteem hebben deze secties de status gestoord;\n- Bij een defect aan de telcomputer AZA, ACU of ACE zullen er vele secties tegelijk bezet tonen (TOBS), dit komt echter bijna niet voor;\n- Storingen in de voeding van het assentelsysteem worden automatisch aan het OBI gemeld. Het is belangrijk dat deze tijdig verholpen worden, als de telcomputer AZA, ACU of ACE uitvalt zullen alle secties tegelijk bezet tonen en na herstel van de voeding gereset moeten worden;\n- De FWS is defect. Geen gevolgen voor het treinverkeer. Het is alleen niet mogelijk om een voorwaardelijke reset uit te voeren;\n- De RCS is defect. Geen gevolgen voor het treinverkeer. Het is alleen niet mogelijk om een voorbereidende reset uit te voeren.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text: 'Storingen rondom werkzaamheden:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Bij werkzaamheden waarbij met railvoertuigen ter hoogte van een telpunt of wieldetector gewerkt wordt, kan het voorkomen dat er telfouten ontstaan of telpunten in de storing raken. Ook het losnemen van een telpunt zal resulteren in een storingssituatie;\n- De TRDL moet op de hoogte zijn van alle werkzaamheden waarbij zich verstoringen in het assentelsysteem kunnen voordoen. Na storingen t.g.v. werkzaamheden is het noodzakelijk om een voorwaardelijke of harde reset uit te voeren.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text: 'Reset van secties in het assentellersysteem',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Voorwaardelijke of voorbereidende reset: Deze reset is altijd veilig. Door de voorwaardelijke reset kijkt het systeem of een bij volgende trein wel het juiste aantal assen wordt gemeten;\n- Harde reset: Deze reset is een veiligheidshandeling en dient niet ingezet te worden als diagnosemiddel bij een storing of na een reparatie. Hij wordt door een monteur ter plaatse uitgevoerd. De storing wordt hiermee direct opgeheven. De sectie moet voor het uitvoeren van een harde reset altijd gegarandeerd treinvrij zijn.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext:
                        'N.B.: Een reset mag alleen worden uitgevoerd volgens de toepassingsvoorwaarden en procedures beschreven in het betreffende VS.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Het resetten is de enige mogelijkheid om een sectie met de status gestoord of (ten onrechte) bezet weer de status vrij te geven als er geen defecten (meer) zijn aan het assentelsysteem. De verschillende vormen van reset bij de vier assentelsystemen vind je bij 'Verschillende typen assentelsystemen'",
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'Verschillende typen assentelsystemen',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Az L90-4',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Het assentelsysteem Az L90-4 wordt sinds 1996 in Nederland toegepast vanwege de komst van nieuw licht diesel materieel, eerst op de noordelijke lijnen en later op steeds meer nevenlijnen in het noorden en zuiden van het land.',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_detectie_basis_7.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'EAK (Elektrische Aansluit Kast) naast het spoor en een dubbel railcontact bevestigd aan de spoorstaaf. Er wordt een dubbel railcontact geplaatst om de rijrichting te kunne" bepalen en voor de failsafe wrking van het systeem. Het dubbele railcontact samen met de EAK vormen het telpunt.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_detectie_basis_8.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        "Binnenkast met daarin twee AZA's (AchsZählAuswertung) waarvan alleen de AZA onderin goed is te zien. Daartussen bevindt zich het resetpaneel met de sleutelschakelaars voor de uitvoering van een harde reset voor beide AZA's. De AZA is de telcomputer voor het gehele assentelsysteem.",
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_detectie_basis_9.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Wijze van verstoring van het magnetisch veld (over de spoorstaaf heen) door de flens van het wiel van de trein. Geen wiel betekent geen verstoring van het veld, een wiel passage verstoort dus kortstondig het veld wat als telling wordt geregistreerd.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Reset Az L90-4 (GVS60151)',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text: 'Het assentellersysteem Az L90-4 kent:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Voorwaardelijke reset met kwitering door de TRDL;\n- Voorwaardelijke reset door seinwezen monteur;\n- Harde reset (onvoorwaardelijk) door seinwezen monteur.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "N.B.: De voorwaardelijke reset bij het Az LM assentelsysteem heet voorbereidende reset, omdat de naamgeving 'voorwaardelijk' in het verleden verkeerd gekozen is.",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Voorwaardelijke reset met kwitering door TRDL',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Voor deze uitvoeringsvorm staat er op diverse verkeersleidinsposten ee FWS-VL (FernWikSchnttstelle), dit is een terminal die vanuit de verkeersleidingspost de functie van meerdere assentelsystemen kan monitoren. Op het beeldscherm van de FWS-VL kan de TRDL in één oogopslag zien wat de status van alle secties in een compleet baanvak is. Bij een eventuele afwijking van de normale werking kan de TRDL passende maatregelen nemen. Als er een storing optreedt ten gevolge van een telfout, dan kan de TRDL met behulp van de FWS-VL een voorwaardelijke reset met kwitering geven om de \'gestoorde\' secties weer \'vrij\' te krijgen. De "RDL reset als eerste op zijn terminal de gestoorde sectie. Na deze reset uitgevoerd te hebben dient een veegtrein de geresette sectie volledig en correct in- en uit te rijden, waardoor in- en uitrijd telpunt het gelijke aantal wielen van de veegtrein hebben geteld. De telstand voor de sectie is dan weer nul. Pas dan kan de TRDL op de FWS-VL terminal de sectie kwiteren, waarna de sectie status door het assentelsysteem aangepast wordt naar vrij. De voorwaardelijke reset met kwitering is de meest veilige vorm van reset.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Voorwaardelijke reset door seinwezen monteur',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Voor deze uitvoeringsvorm heeft de aannemer een diagnosesysteem in het relaishuis of de straatkast nodig die hij gebruikt voor diagnose, de FWS-lokaal, en waarmee hij een voorwaardelijke reset kan uitvoeren. Wanneer er een storing optreedt ten gevolge van een telfout, kan de seinwezen monteur met behulp van de FWS-Lokaal een voorwaardelijke reset geven om de \'gesto"rde\' secties weer \'vrij\' te krijgen. De monteur reset als eerste de gestoorde sectie. Dit houdt in dat het aantal getelde wielen in de sectie, verschil tussen in- en uitrijd telpunt, op nul wordt gezet. Na deze reset uitgevoerd te hebben dient een veegtrein de geresette sectie volledig en correct in- en uit te rijden, waardoor in- en uitrijd telpunt het gelijke aantal wielen van de veegtrein hebben geteld. De telstan voor de sectie is dan weer nul, waarna de sectie status door het assentelsysteem aangepast wordt naar vrij.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Harde reset door de seinwezen monteur',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Voor deze uitvoeringsvorm is er een resetpaneel aanwezig in de kast tussen de twee AZA\'s waarmee de seinwezen monteur een harde reset kan uitvoeren. Door het uitvoeren van een harde reset, draaien aan de sleutelschakelaar voor een sectie op het resetpaneel, wordt de "ectie direct vrij gemeld, dit geldt zowel voor secties die gestoord gemeld zijn als gevolg van een storing in het assentelsysteem, alsook voor secties die bezet gemeld zijn door een trein. Dit houdt in dat het aantal getelde wielen in een sectie, verschil tussen in- en uitrijd telpunt, direct op nul wordt gezet waarna de sectie status door het assentelsysteem aangepast wordt naar vrij. De harde reset mag alleen onder strikte voorwaarden worden uitgevoerd. Voor de onderstaande situaties zijn afzonderlijke reset procedures van toepassing:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Storingsherstel zonder noodzaak tot werkzaamheden binnen de gevaarzone;\n- Storingsherstel waarbij binnen de gevaarzone gewerkt moet worden;\n- Harde reset na geplande werkzaamheden.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Het spreekt voor zich dat er zeer zorgvuldig met de harde reset moet worden omgegaan om risico's te beperken. Voor het geven van een harde reset dienen de seinwezen monteur en TRDL zich dan ook aan strikte procedures te houden en dient de seinwezen monteur bevoegd te zijn verklaard door ProRail.\nDe harde reset is de minst veilige vorm van reset.",
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'SCA-2',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Het assentelsysteem SCA-2 is geïntroduceerd na een aanbesteding in 2012 ter vervanging van de Az L90-4. Helaas waren er zeer veel problemen tijdens het vrijgaveproces waardoor dit systeem enkel toegepast wordt op de lijn Zevenaar-Didam en verder nergens in Nederland meer toegepast zal worden.',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_detectie_basis_10.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Aansluitkast en de WDD (dubbele wieldetector) gemonteerd aan de spoorstaaf. De dubbele wieldetector samen met de AK vormen het telpunt (ADP).',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_detectie_basis_11.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Geopende aansluitkast met daarin twee aansluitblokken (BJ50 en BJ39). De dubbele wieldetector en de aansluitblokken samen vormen het ADP (Axle counter Detection Point).',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_detectie_basis_12.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Buiten- en binnenkast met daarin één ACU (Axle Counter Unit) boven in de kast en daaronder het resetpaneel met de sleutelschakelaars voor de uitvoering van een harde reset. De ACU is hier de telcomputer voor het gehele assentelsysteemsysteem.',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AIDetectieBasisNavigation extends StatelessWidget {
  const AIDetectieBasisNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_reset_assenteller) {
          await Navigator.pushNamed(context, 'ww_reset_assenteller');
        } else if (result == PopupNavigation.ai_beveiliging_basis1) {
          await Navigator.pushNamed(context, 'ai_beveiliging_basis1');
        } else if (result == PopupNavigation.ai_beveiliging_basis2) {
          await Navigator.pushNamed(context, 'ai_beveiliging_basis2');
        } else if (result == PopupNavigation.ai_roestvorming) {
          await Navigator.pushNamed(context, 'ai_roestvorming');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupNavigation>>[
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.home_screen,
          child: MenuItemContent(
            icon: IconUtils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ww_reset_assenteller,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Reset Assenteller',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_beveiliging_basis1,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Beveiliging Basis 1',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_beveiliging_basis2,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Beveiliging Basis 2',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_roestvorming,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Roestvorming',
          ),
        ),
      ],
    );
  }
}