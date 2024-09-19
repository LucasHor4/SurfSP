import 'package:flutter/material.dart';
import 'classes/cl_Praia.dart';

void main() {
  runApp(const Praias());
}

class Praias extends StatefulWidget {
  const Praias({super.key});

  @override
  State<Praias> createState() => PraiasState();
}

List<clPraia> lpraia = [
  clPraia(
      1,
      'Ubatuba',
      'Um destino imperdível para surfistas de todos os níveis é Praia Grande, em Ubatuba. É reconhecido por suas ondas consistentes e acessíveis. É uma excelente área para surfe, principalmente de setembro a fevereiro, quando as ondas são mais suaves e ideais para iniciantes e intermediários.  Além de ser um local popular para o surf, a Praia Grande também é conhecida por sua atmosfera animada e paisagens de tirar o fôlego, o que a torna uma das praias mais populares de Ubatuba. Ideal para exercícios como caminhadas e corridas na areia, é também um ótimo lugar para desfrutar e admirar o sol.',
      'img/uba.png'),
  clPraia(
      2,
      'Caraguatatuba',
      'Conhecida por suas ondas longas e desafiadoras, a Praia de Massaguaçu, em Caraguatatuba, é um verdadeiro paraíso para surfistas avançados e intermediários. Para manobras radicais, é ideal ter águas agitadas e ondulações consistentes, especialmente de junho a novembro. A ampla praia garante espaço suficiente para surfistas e banhistas, enquanto a infraestrutura do entorno, que oferece restaurantes, bares e cafés, oferece conforto e comodidade. Além disso, Massaguaçu encanta com suas belezas naturais, oferecendo vistas panorâmicas do mar e das montanhas, sendo o local ideal para caminhadas e relaxamento após o surf. O fácil acesso e a proximidade facilitam a chegada. Prepare-se para uma deliciosa refeição e aproveite as ondas poderosas em um dos melhores spots do litoral norte de São Paulo!',
      'img/car.png'),
  clPraia(
      3,
      'Ilhabela',
      'Para surfistas em busca de ondas desafiadoras e um ambiente abrangente, a Praia do Bonete, em Ilhabela, é uma opção imperdível. Praia Bonete é reconhecida por suas ondas fortes e tubulares, sendo uma das melhores praias para surfe na região. Os meses de inverno e primavera, que vão de junho a novembro, são ideais para surfistas avançados e intermediários. A comunidade caiçara tradicional e uma natureza exuberante circunda a Praia do Bonete, que é acessível por trilha ou barco. É uma experiência única. Bonete adora a beleza natural da região, que inclui praias próximas e pontos de interesse interessantes para explorar. Depois de um dia intenso de surf, a tranquilidade e o isolamento da praia fazem dela o local ideal para descontrair e reencontrar-se com a natureza.',
      'img/ilb.png'),
  clPraia(
      4,
      'São Sebastião',
      'Conhecida por suas ondas consistentes e desafiadoras, a Praia de Maresias, em São Sebastião, é um dos destinos mais famosos para surfistas do Brasil. Os meses de outono e inverno, de março a agosto, oferecem excelentes condições para surfistas, principalmente avançados e intermediários, pois as ondas são mais frequentes e as ondas alcançam seu melhor potencial. Maresias oferece uma vasta variedade de quiosques, bares, restaurantes e segurança, além de uma infraestrutura completa que o torna um local confortável e conveniente para passar o dia.  Possui um ambiente natural de tirar o fôlego com vistas panorâmicas do oceano e das montanhas circundantes.',
      'img/ssb.png'),
  clPraia(
      5,
      'Bertioga',
      'Para surfistas que procuram ondas consistentes e um ambiente tranquilo, a Praia de Guaratuba em Bertioga é um destino ideal. Uma escolha popular para surfistas de todos os níveis, Guaratuba é conhecida por suas ondas longas e bem formadas. As ondas frequentes e fortes ocorrem durante os meses de inverno e primavera, junho a novembro, oferecendo oportunidades ideais para praticar o surfe. A praia se destaca pelo ambiente natural bem preservado, extensos recifes e águas limpas, proporcionando muito espaço para os surfistas. Prepare sua prancha de surf e venha explorar as ondas constantes e o clima tranquilo da Praia de Guaratuba, um dos melhores spots de surf de Bertioga!',
      'img/ber.png'),
  clPraia(
      6,
      'Guarujá',
      'Um dos destinos mais conhecidos para surfistas na região é a Praia de Pitangueiras, do Guarujá, porque oferece condições adequadas e um ambiente animado. Reconhecida por suas ondas constantes e variadas, Pitangueiras oferece oportunidades tanto para surfistas iniciantes quanto experientes. As ondas provocadas pelas ondulações do sul durante os meses de outono e inverno, ao longo de março a agosto, oferecem condições ideais para o surfe, com ondas mais desafiadoras e tubulares. A proximidade com o centro do Guarujá também facilita o acesso a serviços e comodidades adicionais. Além do surf, Pitangueiras é conhecida por seu ambiente animado e atividades de lazer como passeios de barco, natação e caminhadas na praia.',
      'img/gua.png'),
  clPraia(
      7,
      'Santos',
      'Um dos principais pontos de surf da Baixada Santista é a Praia de Gonzaga, em Santos. É conhecido por suas ondas consistentes e atmosfera urbana animada. Gonzaga oferece condições ideais para surfar ao longo do ano, com ondas que oferecem oportunidades ótimas para surfistas de todos os níveis. Particularmente nos meses de janeiro a novembro, que se chamam de primavera e inverno, as ondas têm uma tendência a ser mais intensas, sendo ideais para quem procura desafios mais elevados. O calçadão Gonzaga é ideal para corridas e caminhadas, possuindo vistas deslumbrantes do oceano e um ambiente descontraído para descomprimir sem rigor após uma sessão de surf.',
      'img/san.png'),
  clPraia(
      8,
      'São Vicente',
      'Surfistas buscando ondas consistentes e um ambiente acolhedor frequentam a Praia de Itararé, em São Vicente. Itararé, reconhecida por suas excelentes condições de surf ao longo do ano, fornece diversos picos. As ondulações do sul têm swells que têm excelentes oportunidades para surfar, com ondas mais desafiadoras e tubulares, durante os meses de outono e inverno, de março a agosto. A praia possui uma variedade de restaurantes, bares e opções de hospedagem próximas, garantindo conforto e convivência aos visitantes por meio de uma infraestrutura completa. À parte do surf, a Praia de Itararé oferece diversas atividades e é um excelente local para desfrutar do sol e das vistas panorâmicas da baía de São Vicente além de ser um ponto de descanso.',
      'img/svc.png'),
  clPraia(
      9,
      'Praia Grande',
      'Para os amantes do surf, a Praia do Canto do Forte é uma ótima opção. Com uma extensão de 1,5 km, essa praia possui ondas médias que atraem surfistas ao longo do ano. Para recarregar as energias depois de uma sessão de surfe, o bairro do Canto do Forte tem opções gastronômicas na Avenida Marechal Mallet. O inverno é o melhor período para visitar essa praia, pois o mar oferece condições ideais para a prática do surfe e as ondas são mais consistentes. Aproveite a oportunidade para explorar a ilha arborizada, repleta de caranguejos e que confere um caráter único à região.',
      'img/prg.png'),
  clPraia(
      10,
      'Mongaguá',
      'Surfistas em busca de sossego e boas ondas podem encontrar refúgio na Praia de Agenor de Campos, em Mongaguá. Uma das condições que atrai surfistas ao longo do ano é a praia. É particularmente popular durante os meses de inverno e primavera, que acontecem de junho a novembro. Em comparação com outras praias da região mais frequentadas, a atmosfera da Praia de Agenor de Campos é mais tranquila, proporcionando uma experiência mais intimista e descansante. A área do recife é grande, oferecendo espaço suficiente para os surfistas aproveitarem as ondas sem grandes grupos.  Prepare sua prancha de surf e vá até a Praia de Agenor de Campos, em Mongaguá, para um refúgio tranquilo e ideal para os amantes do surf!',
      'img/mon.png'),
  clPraia(
      11,
      'Itanhaém',
      'Situada no litoral sul de São Paulo, Itanhaém é um destino muito querido pelos surfistas por suas praias animadas e condições ideais para a prática do esporte. A Praia dos Sonhos é reconhecida como o ponto de surf mais aprimorado da região. Ao longo do ano, as ondulações na Praia dos Sonhos são constantes, proporcionando uma experiência desafiadora e emocional para ambos os níveis de habilidade. A paisagem deslumbrante da praia, combinada com falésias e uma vista panorâmica do oceano, eleva a especialidade de cada sessão de surf. Durante o ano, a Praia dos Sonhos oferece boas condições para surfar, mas há alguns períodos especificamente específicos. O início da primavera, de setembro a novembro, é a melhor época para encontrar ondas constantes e praias menos movimentadas.',
      'img/ita.png'),
  clPraia(
      12,
      'Peruíbe',
      'Situada no litoral sul de São Paulo, a deslumbrante Praia do Guaraú atrai surfistas de todos os níveis. Ela é reconhecida como o ponto principal para surfistas, oferecendo ondas desafiadoras e uma beleza natural para tirar o fôlego. É famosa por suas ondas fortes e constantes, sendo o destino ideal para surfistas que buscam vivencias cativantes ao mar. Para iniciantes e surfistas conhecidos, as ondulações na Praia do Guaraú são constantes ao longo do ano, proporcionando condições boas. A acolhedora comunidade de surfistas estabelece um ambiente de camaradagem e troca de experiências. É comum ver grupos de surfistas locais e turistas trocando dicas e histórias, agregando ainda mais à experiência do surfista na região.',
      'img/per.png'),
  clPraia(
      13,
      'Iguape',
      'Os entusiastas do surf encontrarão em Iguape, uma cidade historicamente significativa no litoral sul de São Paulo, um destino inesperado. O melhor local para praticar esse esporte é a Praia da Juréia, pois proporciona uma combinação ideal de ondas emocionantes e um cenário natural deslumbrante. Todos os que se aventuram em suas águas têm a opção de uma experiência diversificada e emocional devido às variedades e força das ondas. Apesar de oferecer boas condições para surfar ao longo do ano, a Praia da Juréia é particularmente favorável em alguns períodos de surf. De setembro a novembro, a primavera é a perfeição perfeita para encontrar ondas consistentes e uma praia menos frequentada, possibilitando sessões de surf mais eficientes.',
      'img/igu.png'),
  clPraia(
      14,
      'Ilha Comprida',
      'Surfistas em busca de paisagens naturais deslumbrantes e ondas emocionantes têm que chegar à Ilha Comprida, uma ilha cativante do litoral sul de São Paulo. A Praia do Boqueirão Sul é reconhecida como o melhor local para praticar surf, possuindo ambiente tranquilo e condições ideais para surfistas de todos os níveis. O outono, que acontece de março a junho, é uma excelente época, caracterizada por ondas bem formadas e condições climáticas confortáveis. No verão, que tem tempo de dezembro a fevereiro, apesar do aumento no número de visitantes, das temperaturas extremas e das boas ondas, especialmente no início da manhã e do final da tarde, garantem uma experiência específica no surf.',
      'img/ilc.png'),
  clPraia(
      15,
      'Cananéia',
      'Nesta cidade histórica, Cananéia, é um verdadeiro paraíso para surfistas que buscam ondas de qualidade e um ambiente natural preservado. É localizada no litoral sul de São Paulo. Particularmente, a Ilha do Cardoso se destaca como o ponto ideal para praticar surferismo na área. Para os amantes do surf, a ilha proporciona uma experiência única devido às suas praias intocadas e sua biodiversidade abundante. A Praia da Ilha do Cardoso é conhecida pelas suas ondas consistentes e bem formadas, ideais tanto para surfistas novatos como experientes. Durante o ano, as ondulações ocorrem com frequência, garantindo boas condições para o surf em qualquer locação. Chegar à Praia da Ilha do Cardoso é uma aventura por si só. O acesso é feito por barco, saindo de Cananéia, o que já dá um toque especial para a viagem.',
      'img/can.png'),
];

class PraiasState extends State<Praias> {
  @override
  Widget build(BuildContext context) {
    double tamanho = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.home,
                size: 35,
              ),
            )
          ],
          title: Container(
              padding: const EdgeInsets.only(
                top: 5,
                right: 10,
              ),
              width: MediaQuery.of(context).size.width - 10,
              child: const TextField(
                decoration:  InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Pesquise por praias...'),
                  )),
        ),
        body: Center(
          child: ListView.builder(
            itemBuilder: (context, index) {
              bool troca = true;
              return StatefulBuilder(
                  // esse cara q faz a magica funcionar, o StatefulBuilder
                  builder: (context, setState) => GestureDetector(
                      onTap: () {
                        //aqui muda se tá aberto ou n (lá ele)
                        setState(() {
                          troca = !troca;
                        });
                      },
                      child: Center(
                          child: AnimatedContainer(
                        //Container e configurações dele
                        margin: const EdgeInsets.only(
                            bottom: 20, //xx
                            top: 20),
                        width: tamanho - 50,
                        height: (troca == false)
                            ? 750
                            : 200, //ajuste de altura[altura quando selecionado : altura padrão]
                        color: const Color.fromARGB(255, 217, 217, 217),
                        duration: const Duration(seconds: 1),
                        curve: Curves.ease,
                        //Texto sobre as praias.
                        child: Stack(
                          children: [
                            Positioned(
                              child: Image.asset(
                                //imagem da praia
                                lpraia[index].imgPraia,
                                width: tamanho - 50,
                                height: 200,
                                fit: (troca == false)
                                    ? BoxFit.cover
                                    : BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 150,
                              left: 10,
                              child: Text(
                                lpraia[index].nomePraia,
                                style: const TextStyle(
                                    fontSize: 40,
                                    color: Colors.white,
                                    decoration: TextDecoration.none),
                              ),
                            ),
                            Positioned(
                                top: 200,
                                left: 2,
                                child: Container(
                                    padding: const EdgeInsets.only(
                                      left: 8,
                                      right: 100,
                                    ),
                                    margin: const EdgeInsets.only(
                                      right: 11,
                                    ),
                                    width: tamanho - 1,
                                    child: (troca == false)
                                        ? Text(
                                            lpraia[index].descPraia,
                                            style: const TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 20,
                                                color: Color.fromARGB(
                                                    255, 41, 41, 41)),
                                          )
                                        : const Text('')))
                          ],
                        ),
                      ))));
            },
            itemCount: lpraia.length,
          ),
        ),
      ),
    );
  }
}


