import 'package:flutter/material.dart';


void main() {
  runApp(const Praias());
}

class Praias extends StatefulWidget {
  const Praias({super.key});

  @override
  State<Praias> createState() => PraiasState();
}

class PraiasState extends State<Praias> {
  //Declarando variaveis para usar na alternação de ligado e desligado.⬇⬇
  bool selected = false; //esse é um exemplo.
  bool ubatuba = false;
  bool caraguatatuba = false;
  bool ilhabela = false;
  bool ssebastiao = false;
  bool bertioga = false;
  bool guaruja = false;
  bool santos = false;
  bool svicente = false;
  bool praiagrande = false;
  bool mongagua = false;
  bool itanhaem = false;
  bool peruibe = false;
  bool iguape = false;
  bool ilhacomprida = false;
  bool cananeia = false;

  @override
  Widget build(BuildContext context) {
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
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Pesquise por praias...'),
                    )
                  ),
            
            
            
            ),



            body: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              }, // para alternar entre ligado e deligado. [teste]

              child: Center(
                  child: ListView(
                children: [
                  //Praia de Ubatuba:
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        ubatuba = !ubatuba;
                      });
                    },
                    child: Center(
                      child: AnimatedContainer(
                          //Container e configurações dele.x

                          margin: const EdgeInsets.only(
                              bottom: 20, //xx
                              top: 20),
                          width: MediaQuery.of(context).size.width - 50,
                          height: ubatuba
                              ? 750
                              : 200, //aujuste de altura[altura quando selecionado : altura padrão]
                          color: const Color.fromARGB(255, 217, 217, 217),
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease,
                          //Texto sobre as praias.
                          child: Stack(
                            children: [
                              Positioned(
                                child: Image.asset(
                                  //imagem da praia
                                  'img/uba.png',
                                  width: MediaQuery.of(context).size.width - 50,
                                  height: 200,
                                  fit: ubatuba ? BoxFit.cover : BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                top: 150,
                                left: 10,
                                child: Text(
                                  'Ubatuba',
                                  style: TextStyle(
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
                                      width:
                                          MediaQuery.of(context).size.width - 1,
                                      child: ubatuba
                                          ? const Text(
                                              'Um destino imperdível para surfistas de todos os níveis é Praia Grande, em Ubatuba. É reconhecido por suas ondas consistentes e acessíveis. É uma excelente área para surfe, principalmente de setembro a fevereiro, quando as ondas são mais suaves e ideais para iniciantes e intermediários.  Além de ser um local popular para o surf, a Praia Grande também é conhecida por sua atmosfera animada e paisagens de tirar o fôlego, o que a torna uma das praias mais populares de Ubatuba. Ideal para exercícios como caminhadas e corridas na areia, é também um ótimo lugar para desfrutar e admirar o sol.', //Aqui vai o texto sobre a praia.
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 20,
                                                  color: Color.fromARGB(
                                                      255, 41, 41, 41)),
                                            )
                                          : const Text('')))
                            ],
                          )),
                    ),
                  ),

                  // Fim da praia.

                  //Praia de Caraguatatuba:
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        caraguatatuba = !caraguatatuba;
                      });
                    },
                    child: Center(
                      child: AnimatedContainer(
                          //Container e configurações dele.

                          margin: const EdgeInsets.only(
                            bottom: 20, //xx
                            top: 20,
                          ),
                          width: MediaQuery.of(context).size.width - 50,
                          height: caraguatatuba
                              ? 750
                              : 200, //aujuste de altura[altura quando selecionado : altura padrão]
                          color: const Color.fromARGB(255, 217, 217, 217),
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease,
                          //Texto sobre as praias.
                          child: Stack(
                            children: [
                              Positioned(
                                child: Image.asset(
                                  //imagem da praia
                                  'img/car.png',
                                  width: MediaQuery.of(context).size.width - 50,
                                  height: 200,
                                  fit: caraguatatuba
                                      ? BoxFit.cover
                                      : BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                top: 150,
                                left: 10,
                                child: Text(
                                  'Caraguatatuba',
                                  style: TextStyle(
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
                                      margin: const EdgeInsets.only(right: 11),
                                      width:
                                          MediaQuery.of(context).size.width - 1,
                                      child: caraguatatuba
                                          ? const Text(
                                              'Conhecida por suas ondas longas e desafiadoras, a Praia de Massaguaçu, em Caraguatatuba, é um verdadeiro paraíso para surfistas avançados e intermediários. Para manobras radicais, é ideal ter águas agitadas e ondulações consistentes, especialmente de junho a novembro. A ampla praia garante espaço suficiente para surfistas e banhistas, enquanto a infraestrutura do entorno, que oferece restaurantes, bares e cafés, oferece conforto e comodidade. Além disso, Massaguaçu encanta com suas belezas naturais, oferecendo vistas panorâmicas do mar e das montanhas, sendo o local ideal para caminhadas e relaxamento após o surf. O fácil acesso e a proximidade facilitam a chegada. Prepare-se para uma deliciosa refeição e aproveite as ondas poderosas em um dos melhores spots do litoral norte de São Paulo!', //Aqui vai o texto sobre a praia.
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 20,
                                                  color: Color.fromARGB(
                                                      255, 41, 41, 41)),
                                            )
                                          : const Text('')))
                            ],
                          )),
                    ),
                  ),

                  // Fim da praia.

                  //Praia de ilhabela:
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        ilhabela = !ilhabela;
                      });
                    },
                    child: Center(
                      child: AnimatedContainer(
                          //Container e configurações dele.

                          margin: const EdgeInsets.only(
                            bottom: 20, //xx
                            top: 20,
                          ),
                          width: MediaQuery.of(context).size.width - 50,
                          height: ilhabela
                              ? 750
                              : 200, //aujuste de altura[altura quando selecionado : altura padrão]
                          color: const Color.fromARGB(255, 217, 217, 217),
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease,
                          //Texto sobre as praias.
                          child: Stack(
                            children: [
                              Positioned(
                                child: Image.asset(
                                  //imagem da praia
                                  'img/ilb.png',
                                  width: MediaQuery.of(context).size.width - 50,
                                  height: 200,
                                  fit: ilhabela ? BoxFit.cover : BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                top: 150,
                                left: 10,
                                child: Text(
                                  'Ilhabela',
                                  style: TextStyle(
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
                                      margin: const EdgeInsets.only(right: 11),
                                      width:
                                          MediaQuery.of(context).size.width - 1,
                                      child: ilhabela
                                          ? const Text(
                                              'Para surfistas em busca de ondas desafiadoras e um ambiente abrangente, a Praia do Bonete, em Ilhabela, é uma opção imperdível. Praia Bonete é reconhecida por suas ondas fortes e tubulares, sendo uma das melhores praias para surfe na região. Os meses de inverno e primavera, que vão de junho a novembro, são ideais para surfistas avançados e intermediários. A comunidade caiçara tradicional e uma natureza exuberante circunda a Praia do Bonete, que é acessível por trilha ou barco. É uma experiência única. Bonete adora a beleza natural da região, que inclui praias próximas e pontos de interesse interessantes para explorar. Depois de um dia intenso de surf, a tranquilidade e o isolamento da praia fazem dela o local ideal para descontrair e reencontrar-se com a natureza.', //Aqui vai o texto sobre a praia.
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 20,
                                                  color: Color.fromARGB(
                                                      255, 41, 41, 41)),
                                            )
                                          : const Text('')))
                            ],
                          )),
                    ),
                  ),

                  // Fim da praia.

                  //Praia de ssebastiao:
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        ssebastiao = !ssebastiao;
                      });
                    },
                    child: Center(
                      child: AnimatedContainer(
                          //Container e configurações dele.

                          margin: const EdgeInsets.only(
                            bottom: 20, //xx
                            top: 20,
                          ),
                          width: MediaQuery.of(context).size.width - 50,
                          height: ssebastiao
                              ? 750
                              : 200, //aujuste de altura[altura quando selecionado : altura padrão]
                          color: const Color.fromARGB(255, 217, 217, 217),
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease,
                          //Texto sobre as praias.
                          child: Stack(
                            children: [
                              Positioned(
                                child: Image.asset(
                                  //imagem da praia
                                  'img/ssb.png',
                                  width: MediaQuery.of(context).size.width - 50,
                                  height: 200,
                                  fit: ssebastiao ? BoxFit.cover : BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                top: 150,
                                left: 10,
                                child: Text(
                                  'São Sebastião',
                                  style: TextStyle(
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
                                      margin: const EdgeInsets.only(right: 11),
                                      width:
                                          MediaQuery.of(context).size.width - 1,
                                      child: ssebastiao
                                          ? const Text(
                                              'Conhecida por suas ondas consistentes e desafiadoras, a Praia de Maresias, em São Sebastião, é um dos destinos mais famosos para surfistas do Brasil. Os meses de outono e inverno, de março a agosto, oferecem excelentes condições para surfistas, principalmente avançados e intermediários, pois as ondas são mais frequentes e as ondas alcançam seu melhor potencial. Maresias oferece uma vasta variedade de quiosques, bares, restaurantes e segurança, além de uma infraestrutura completa que o torna um local confortável e conveniente para passar o dia.  Possui um ambiente natural de tirar o fôlego com vistas panorâmicas do oceano e das montanhas circundantes.', //Aqui vai o texto sobre a praia.
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 20,
                                                  color: Color.fromARGB(
                                                      255, 41, 41, 41)),
                                            )
                                          : const Text('')))
                            ],
                          )),
                    ),
                  ),

                  // Fim da praia.

                  //Praia de bertioga:
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        bertioga = !bertioga;
                      });
                    },
                    child: Center(
                      child: AnimatedContainer(
                          //Container e configurações dele.

                          margin: const EdgeInsets.only(
                            bottom: 20, //xx
                            top: 20,
                          ),
                          width: MediaQuery.of(context).size.width - 50,
                          height: bertioga
                              ? 750
                              : 200, //aujuste de altura[altura quando selecionado : altura padrão]
                          color: const Color.fromARGB(255, 217, 217, 217),
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease,
                          //Texto sobre as praias.
                          child: Stack(
                            children: [
                              Positioned(
                                child: Image.asset(
                                  //imagem da praia
                                  'img/ber.png',
                                  width: MediaQuery.of(context).size.width - 50,
                                  height: 200,
                                  fit: bertioga ? BoxFit.cover : BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                top: 150,
                                left: 10,
                                child: Text(
                                  'Bertioga',
                                  style: TextStyle(
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
                                      margin: const EdgeInsets.only(right: 11),
                                      width:
                                          MediaQuery.of(context).size.width - 1,
                                      child: bertioga
                                          ? const Text(
                                              'Para surfistas que procuram ondas consistentes e um ambiente tranquilo, a Praia de Guaratuba em Bertioga é um destino ideal. Uma escolha popular para surfistas de todos os níveis, Guaratuba é conhecida por suas ondas longas e bem formadas. As ondas frequentes e fortes ocorrem durante os meses de inverno e primavera, junho a novembro, oferecendo oportunidades ideais para praticar o surfe. A praia se destaca pelo ambiente natural bem preservado, extensos recifes e águas limpas, proporcionando muito espaço para os surfistas. Prepare sua prancha de surf e venha explorar as ondas constantes e o clima tranquilo da Praia de Guaratuba, um dos melhores spots de surf de Bertioga!', //Aqui vai o texto sobre a praia.
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 20,
                                                  color: Color.fromARGB(
                                                      255, 41, 41, 41)),
                                            )
                                          : const Text('')))
                            ],
                          )),
                    ),
                  ),

                  // Fim da praia.

                  //Praia de guaruja:
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        guaruja = !guaruja;
                      });
                    },
                    child: Center(
                      child: AnimatedContainer(
                          //Container e configurações dele.

                          margin: const EdgeInsets.only(
                            bottom: 20, //xx
                            top: 20,
                          ),
                          width: MediaQuery.of(context).size.width - 50,
                          height: guaruja
                              ? 750
                              : 200, //aujuste de altura[altura quando selecionado : altura padrão]
                          color: const Color.fromARGB(255, 217, 217, 217),
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease,
                          //Texto sobre as praias.
                          child: Stack(
                            children: [
                              Positioned(
                                child: Image.asset(
                                  //imagem da praia
                                  'img/gua.png',
                                  width: MediaQuery.of(context).size.width - 50,
                                  height: 200,
                                  fit: guaruja ? BoxFit.cover : BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                top: 150,
                                left: 10,
                                child: Text(
                                  'Guarujá',
                                  style: TextStyle(
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
                                      margin: const EdgeInsets.only(right: 11),
                                      width:
                                          MediaQuery.of(context).size.width - 1,
                                      child: guaruja
                                          ? const Text(
                                              'Um dos destinos mais conhecidos para surfistas na região é a Praia de Pitangueiras, do Guarujá, porque oferece condições adequadas e um ambiente animado. Reconhecida por suas ondas constantes e variadas, Pitangueiras oferece oportunidades tanto para surfistas iniciantes quanto experientes. As ondas provocadas pelas ondulações do sul durante os meses de outono e inverno, ao longo de março a agosto, oferecem condições ideais para o surfe, com ondas mais desafiadoras e tubulares. A proximidade com o centro do Guarujá também facilita o acesso a serviços e comodidades adicionais. Além do surf, Pitangueiras é conhecida por seu ambiente animado e atividades de lazer como passeios de barco, natação e caminhadas na praia.', //Aqui vai o texto sobre a praia.
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 20,
                                                  color: Color.fromARGB(
                                                      255, 41, 41, 41)),
                                            )
                                          : const Text('')))
                            ],
                          )),
                    ),
                  ),

                  // Fim da praia.

                  //Praia de santos:
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        santos = !santos;
                      });
                    },
                    child: Center(
                      child: AnimatedContainer(
                          //Container e configurações dele.

                          margin: const EdgeInsets.only(
                            bottom: 20, //xx
                            top: 20,
                          ),
                          width: MediaQuery.of(context).size.width - 50,
                          height: santos
                              ? 750
                              : 200, //aujuste de altura[altura quando selecionado : altura padrão]
                          color: const Color.fromARGB(255, 217, 217, 217),
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease,
                          //Texto sobre as praias.
                          child: Stack(
                            children: [
                              Positioned(
                                child: Image.asset(
                                  //imagem da praia
                                  'img/san.png',
                                  width: MediaQuery.of(context).size.width - 50,
                                  height: 200,
                                  fit: santos ? BoxFit.cover : BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                top: 150,
                                left: 10,
                                child: Text(
                                  'Santos',
                                  style: TextStyle(
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
                                      margin: const EdgeInsets.only(right: 11),
                                      width:
                                          MediaQuery.of(context).size.width - 1,
                                      child: santos
                                          ? const Text(
                                              'Um dos principais pontos de surf da Baixada Santista é a Praia de Gonzaga, em Santos. É conhecido por suas ondas consistentes e atmosfera urbana animada. Gonzaga oferece condições ideais para surfar ao longo do ano, com ondas que oferecem oportunidades ótimas para surfistas de todos os níveis. Particularmente nos meses de janeiro a novembro, que se chamam de primavera e inverno, as ondas têm uma tendência a ser mais intensas, sendo ideais para quem procura desafios mais elevados. O calçadão Gonzaga é ideal para corridas e caminhadas, possuindo vistas deslumbrantes do oceano e um ambiente descontraído para descomprimir sem rigor após uma sessão de surf.', //Aqui vai o texto sobre a praia.
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 20,
                                                  color: Color.fromARGB(
                                                      255, 41, 41, 41)),
                                            )
                                          : const Text('')))
                            ],
                          )),
                    ),
                  ),

                  // Fim da praia.

                  //Praia de svicente:
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        svicente = !svicente;
                      });
                    },
                    child: Center(
                      child: AnimatedContainer(
                          //Container e configurações dele.

                          margin: const EdgeInsets.only(
                            bottom: 20, //xx
                            top: 20,
                          ),
                          width: MediaQuery.of(context).size.width - 50,
                          height: svicente
                              ? 750
                              : 200, //aujuste de altura[altura quando selecionado : altura padrão]
                          color: const Color.fromARGB(255, 217, 217, 217),
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease,
                          //Texto sobre as praias.
                          child: Stack(
                            children: [
                              Positioned(
                                child: Image.asset(
                                  //imagem da praia
                                  'img/svc.png',
                                  width: MediaQuery.of(context).size.width - 50,
                                  height: 200,
                                  fit: svicente ? BoxFit.cover : BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                top: 150,
                                left: 10,
                                child: Text(
                                  'São Vicente',
                                  style: TextStyle(
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
                                      margin: const EdgeInsets.only(right: 11),
                                      width:
                                          MediaQuery.of(context).size.width - 1,
                                      child: svicente
                                          ? const Text(
                                              'Surfistas buscando ondas consistentes e um ambiente acolhedor frequentam a Praia de Itararé, em São Vicente. Itararé, reconhecida por suas excelentes condições de surf ao longo do ano, fornece diversos picos. As ondulações do sul têm swells que têm excelentes oportunidades para surfar, com ondas mais desafiadoras e tubulares, durante os meses de outono e inverno, de março a agosto. A praia possui uma variedade de restaurantes, bares e opções de hospedagem próximas, garantindo conforto e convivência aos visitantes por meio de uma infraestrutura completa. À parte do surf, a Praia de Itararé oferece diversas atividades e é um excelente local para desfrutar do sol e das vistas panorâmicas da baía de São Vicente além de ser um ponto de descanso.', //Aqui vai o texto sobre a praia.
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 20,
                                                  color: Color.fromARGB(
                                                      255, 41, 41, 41)),
                                            )
                                          : const Text('')))
                            ],
                          )),
                    ),
                  ),

                  // Fim da praia.

                  //Praia de praiagrande:
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        praiagrande = !praiagrande;
                      });
                    },
                    child: Center(
                      child: AnimatedContainer(
                          //Container e configurações dele.

                          margin: const EdgeInsets.only(
                            bottom: 20, //xx
                            top: 20,
                          ),
                          width: MediaQuery.of(context).size.width - 50,
                          height: praiagrande
                              ? 750
                              : 200, //aujuste de altura[altura quando selecionado : altura padrão]
                          color: const Color.fromARGB(255, 217, 217, 217),
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease,
                          //Texto sobre as praias.
                          child: Stack(
                            children: [
                              Positioned(
                                child: Image.asset(
                                  //imagem da praia
                                  'img/prg.png',
                                  width: MediaQuery.of(context).size.width - 50,
                                  height: 200,
                                  fit:
                                      praiagrande ? BoxFit.cover : BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                top: 150,
                                left: 10,
                                child: Text(
                                  'Praia Grande',
                                  style: TextStyle(
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
                                      margin: const EdgeInsets.only(right: 11),
                                      width:
                                          MediaQuery.of(context).size.width - 1,
                                      child: praiagrande
                                          ? const Text(
                                              'Para os amantes do surf, a Praia do Canto do Forte é uma ótima opção. Com uma extensão de 1,5 km, essa praia possui ondas médias que atraem surfistas ao longo do ano. Para recarregar as energias depois de uma sessão de surfe, o bairro do Canto do Forte tem opções gastronômicas na Avenida Marechal Mallet. O inverno é o melhor período para visitar essa praia, pois o mar oferece condições ideais para a prática do surfe e as ondas são mais consistentes. Aproveite a oportunidade para explorar a ilha arborizada, repleta de caranguejos e que confere um caráter único à região.', //Aqui vai o texto sobre a praia.
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 20,
                                                  color: Color.fromARGB(
                                                      255, 41, 41, 41)),
                                            )
                                          : const Text('')))
                            ],
                          )),
                    ),
                  ),

                  // Fim da praia.

                  //Praia de mongagua:
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        mongagua = !mongagua;
                      });
                    },
                    child: Center(
                      child: AnimatedContainer(
                          //Container e configurações dele.

                          margin: const EdgeInsets.only(
                            bottom: 20, //xx
                            top: 20,
                          ),
                          width: MediaQuery.of(context).size.width - 50,
                          height: mongagua
                              ? 750
                              : 200, //aujuste de altura[altura quando selecionado : altura padrão]
                          color: const Color.fromARGB(255, 217, 217, 217),
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease,
                          //Texto sobre as praias.
                          child: Stack(
                            children: [
                              Positioned(
                                child: Image.asset(
                                  //imagem da praia
                                  'img/mon.png',
                                  width: MediaQuery.of(context).size.width - 50,
                                  height: 200,
                                  fit: mongagua ? BoxFit.cover : BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                top: 150,
                                left: 10,
                                child: Text(
                                  'Mongaguá',
                                  style: TextStyle(
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
                                      margin: const EdgeInsets.only(right: 11),
                                      width:
                                          MediaQuery.of(context).size.width - 1,
                                      child: mongagua
                                          ? const Text(
                                              'Surfistas em busca de sossego e boas ondas podem encontrar refúgio na Praia de Agenor de Campos, em Mongaguá. Uma das condições que atrai surfistas ao longo do ano é a praia. É particularmente popular durante os meses de inverno e primavera, que acontecem de junho a novembro. Em comparação com outras praias da região mais frequentadas, a atmosfera da Praia de Agenor de Campos é mais tranquila, proporcionando uma experiência mais intimista e descansante. A área do recife é grande, oferecendo espaço suficiente para os surfistas aproveitarem as ondas sem grandes grupos.  Prepare sua prancha de surf e vá até a Praia de Agenor de Campos, em Mongaguá, para um refúgio tranquilo e ideal para os amantes do surf!', //Aqui vai o texto sobre a praia.
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 20,
                                                  color: Color.fromARGB(
                                                      255, 41, 41, 41)),
                                            )
                                          : const Text('')))
                            ],
                          )),
                    ),
                  ),

                  // Fim da praia.

                  //Praia de itanhaem:
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        itanhaem = !itanhaem;
                      });
                    },
                    child: Center(
                      child: AnimatedContainer(
                          //Container e configurações dele.

                          margin: const EdgeInsets.only(
                            bottom: 20, //xx
                            top: 20,
                          ),
                          width: MediaQuery.of(context).size.width - 50,
                          height: itanhaem
                              ? 750
                              : 200, //aujuste de altura[altura quando selecionado : altura padrão]
                          color: const Color.fromARGB(255, 217, 217, 217),
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease,
                          //Texto sobre as praias.
                          child: Stack(
                            children: [
                              Positioned(
                                child: Image.asset(
                                  //imagem da praia
                                  'img/ita.png',
                                  width: MediaQuery.of(context).size.width - 50,
                                  height: 200,
                                  fit: itanhaem ? BoxFit.cover : BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                top: 150,
                                left: 10,
                                child: Text(
                                  'Itanhaém',
                                  style: TextStyle(
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
                                      margin: const EdgeInsets.only(right: 11),
                                      width:
                                          MediaQuery.of(context).size.width - 1,
                                      child: itanhaem
                                          ? const Text(
                                              'Situada no litoral sul de São Paulo, Itanhaém é um destino muito querido pelos surfistas por suas praias animadas e condições ideais para a prática do esporte. A Praia dos Sonhos é reconhecida como o ponto de surf mais aprimorado da região. Ao longo do ano, as ondulações na Praia dos Sonhos são constantes, proporcionando uma experiência desafiadora e emocional para ambos os níveis de habilidade. A paisagem deslumbrante da praia, combinada com falésias e uma vista panorâmica do oceano, eleva a especialidade de cada sessão de surf. Durante o ano, a Praia dos Sonhos oferece boas condições para surfar, mas há alguns períodos especificamente específicos. O início da primavera, de setembro a novembro, é a melhor época para encontrar ondas constantes e praias menos movimentadas.', //Aqui vai o texto sobre a praia.
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 20,
                                                  color: Color.fromARGB(
                                                      255, 41, 41, 41)),
                                            )
                                          : const Text('')))
                            ],
                          )),
                    ),
                  ),

                  // Fim da praia.

                  //Praia de peruibe:
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        peruibe = !peruibe;
                      });
                    },
                    child: Center(
                      child: AnimatedContainer(
                          //Container e configurações dele.

                          margin: const EdgeInsets.only(
                            bottom: 20, //xx
                            top: 20,
                          ),
                          width: MediaQuery.of(context).size.width - 50,
                          height: peruibe
                              ? 750
                              : 200, //aujuste de altura[altura quando selecionado : altura padrão]
                          color: const Color.fromARGB(255, 217, 217, 217),
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease,
                          //Texto sobre as praias.
                          child: Stack(
                            children: [
                              Positioned(
                                child: Image.asset(
                                  //imagem da praia
                                  'img/per.png',
                                  width: MediaQuery.of(context).size.width - 50,
                                  height: 200,
                                  fit: peruibe ? BoxFit.cover : BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                top: 150,
                                left: 10,
                                child: Text(
                                  'Peruíbe',
                                  style: TextStyle(
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
                                      margin: const EdgeInsets.only(right: 11),
                                      width:
                                          MediaQuery.of(context).size.width - 1,
                                      child: peruibe
                                          ? const Text(
                                              'Situada no litoral sul de São Paulo, a deslumbrante Praia do Guaraú atrai surfistas de todos os níveis. Ela é reconhecida como o ponto principal para surfistas, oferecendo ondas desafiadoras e uma beleza natural para tirar o fôlego. É famosa por suas ondas fortes e constantes, sendo o destino ideal para surfistas que buscam vivencias cativantes ao mar. Para iniciantes e surfistas conhecidos, as ondulações na Praia do Guaraú são constantes ao longo do ano, proporcionando condições boas. A acolhedora comunidade de surfistas estabelece um ambiente de camaradagem e troca de experiências. É comum ver grupos de surfistas locais e turistas trocando dicas e histórias, agregando ainda mais à experiência do surfista na região.', //Aqui vai o texto sobre a praia.
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 20,
                                                  color: Color.fromARGB(
                                                      255, 41, 41, 41)),
                                            )
                                          : const Text('')))
                            ],
                          )),
                    ),
                  ),

                  // Fim da praia.

                  //Praia de iguape:
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        iguape = !iguape;
                      });
                    },
                    child: Center(
                      child: AnimatedContainer(
                          //Container e configurações dele.

                          margin: const EdgeInsets.only(
                            bottom: 20, //xx
                            top: 20,
                          ),
                          width: MediaQuery.of(context).size.width - 50,
                          height: iguape
                              ? 750
                              : 200, //aujuste de altura[altura quando selecionado : altura padrão]
                          color: const Color.fromARGB(255, 217, 217, 217),
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease,
                          //Texto sobre as praias.
                          child: Stack(
                            children: [
                              Positioned(
                                child: Image.asset(
                                  //imagem da praia
                                  'img/igu.png',
                                  width: MediaQuery.of(context).size.width - 50,
                                  height: 200,
                                  fit: iguape ? BoxFit.cover : BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                top: 150,
                                left: 10,
                                child: Text(
                                  'Iguape',
                                  style: TextStyle(
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
                                      margin: const EdgeInsets.only(right: 11),
                                      width:
                                          MediaQuery.of(context).size.width - 1,
                                      child: iguape
                                          ? const Text(
                                              'Os entusiastas do surf encontrarão em Iguape, uma cidade historicamente significativa no litoral sul de São Paulo, um destino inesperado. O melhor local para praticar esse esporte é a Praia da Juréia, pois proporciona uma combinação ideal de ondas emocionantes e um cenário natural deslumbrante. Todos os que se aventuram em suas águas têm a opção de uma experiência diversificada e emocional devido às variedades e força das ondas. Apesar de oferecer boas condições para surfar ao longo do ano, a Praia da Juréia é particularmente favorável em alguns períodos de surf. De setembro a novembro, a primavera é a perfeição perfeita para encontrar ondas consistentes e uma praia menos frequentada, possibilitando sessões de surf mais eficientes.', //Aqui vai o texto sobre a praia.
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 20,
                                                  color: Color.fromARGB(
                                                      255, 41, 41, 41)),
                                            )
                                          : const Text('')))
                            ],
                          )),
                    ),
                  ),

                  // Fim da praia.

                  //Praia de ilhacomprida:
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        ilhacomprida = !ilhacomprida;
                      });
                    },
                    child: Center(
                      child: AnimatedContainer(
                          //Container e configurações dele.

                          margin: const EdgeInsets.only(
                            bottom: 20, //xx
                            top: 20,
                          ),
                          width: MediaQuery.of(context).size.width - 50,
                          height: ilhacomprida
                              ? 750
                              : 200, //aujuste de altura[altura quando selecionado : altura padrão]
                          color: const Color.fromARGB(255, 217, 217, 217),
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease,
                          //Texto sobre as praias.
                          child: Stack(
                            children: [
                              Positioned(
                                child: Image.asset(
                                  //imagem da praia
                                  'img/ilc.png',
                                  width: MediaQuery.of(context).size.width - 50,
                                  height: 200,
                                  fit: ilhacomprida
                                      ? BoxFit.cover
                                      : BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                top: 150,
                                left: 10,
                                child: Text(
                                  'Ilha Comprida',
                                  style: TextStyle(
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
                                      margin: const EdgeInsets.only(right: 11),
                                      width:
                                          MediaQuery.of(context).size.width - 1,
                                      child: ilhacomprida
                                          ? const Text(
                                              'Surfistas em busca de paisagens naturais deslumbrantes e ondas emocionantes têm que chegar à Ilha Comprida, uma ilha cativante do litoral sul de São Paulo. A Praia do Boqueirão Sul é reconhecida como o melhor local para praticar surf, possuindo ambiente tranquilo e condições ideais para surfistas de todos os níveis. O outono, que acontece de março a junho, é uma excelente época, caracterizada por ondas bem formadas e condições climáticas confortáveis. No verão, que tem tempo de dezembro a fevereiro, apesar do aumento no número de visitantes, das temperaturas extremas e das boas ondas, especialmente no início da manhã e do final da tarde, garantem uma experiência específica no surf.', //Aqui vai o texto sobre a praia.
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 20,
                                                  color: Color.fromARGB(
                                                      255, 41, 41, 41)),
                                            )
                                          : const Text('')))
                            ],
                          )),
                    ),
                  ),

                  // Fim da praia.

                  //Praia de cananeia:
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        cananeia = !cananeia;
                      });
                    },
                    child: Center(
                      child: AnimatedContainer(
                          //Container e configurações dele.

                          margin: const EdgeInsets.only(
                            bottom: 20, //xx
                            top: 20,
                          ),
                          width: MediaQuery.of(context).size.width - 50,
                          height: cananeia
                              ? 750
                              : 200, //aujuste de altura[altura quando selecionado : altura padrão]
                          color: const Color.fromARGB(255, 217, 217, 217),
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease,
                          //Texto sobre as praias.
                          child: Stack(
                            children: [
                              Positioned(
                                child: Image.asset(
                                  //imagem da praia
                                  'img/can.png',
                                  width: MediaQuery.of(context).size.width - 50,
                                  height: 200,
                                  fit: cananeia ? BoxFit.cover : BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                top: 150,
                                left: 10,
                                child: Text(
                                  'Cananéia',
                                  style: TextStyle(
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
                                      margin: const EdgeInsets.only(right: 11),
                                      width:
                                          MediaQuery.of(context).size.width - 1,
                                      child: cananeia
                                          ? const Text(
                                              'Nesta cidade histórica, Cananéia, é um verdadeiro paraíso para surfistas que buscam ondas de qualidade e um ambiente natural preservado. É localizada no litoral sul de São Paulo. Particularmente, a Ilha do Cardoso se destaca como o ponto ideal para praticar surferismo na área. Para os amantes do surf, a ilha proporciona uma experiência única devido às suas praias intocadas e sua biodiversidade abundante. A Praia da Ilha do Cardoso é conhecida pelas suas ondas consistentes e bem formadas, ideais tanto para surfistas novatos como experientes. Durante o ano, as ondulações ocorrem com frequência, garantindo boas condições para o surf em qualquer locação. Chegar à Praia da Ilha do Cardoso é uma aventura por si só. O acesso é feito por barco, saindo de Cananéia, o que já dá um toque especial para a viagem.', //Aqui vai o texto sobre a praia.
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 20,
                                                  color: Color.fromARGB(
                                                      255, 41, 41, 41)),
                                            )
                                          : const Text('')))
                            ],
                          )),
                    ),
                  ),

                  // Fim da praia.
                ],
              )),
            )));
  }
}
