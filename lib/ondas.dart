import 'package:flutter/material.dart';
import 'package:surfsp/classes/cl_Onda.dart';

void main() {
  runApp(const Ondas());
}

class Ondas extends StatefulWidget {
  const Ondas({super.key});

  @override
  State<Ondas> createState() => OndasState();
}

class OndasState extends State<Ondas> {
  List<clOnda> lOnda = [
    clOnda(
      1, 
      'Beach Break',  
      'Beach Break é a onda que quebra no fundo de areia. Esse tipo de bancada muda o tempo todo, afinal a areia se movimenta no fundo do mar com a ação da maré, do vento e de outros fatores naturais. Por causa dessas mudanças da bancada, esse tipo de onda para surfar se desloca e pode quebrar mais longe ou mais perto da costa e em locais diferentes da praia. No Brasil, a grande maioria das nossas ondas são Beach Breaks. Elas são bastante indicadas para surfistas iniciantes, por oferecerem um pouco mais de segurança na hora da “vaca” (quando você cai da prancha). Por outro lado, surfar um Beach Break requer uma boa leitura da onda para saber onde é o pico (melhor lugar para dropar a onda). Ou seja, esteja sempre atenta para identificar onde a onda vai quebrar. Alguns Beach Breaks bastante conhecidos no Brasil são Maresias (São Paulo), Cacimba do Padre (Fernando de Noronha) e Itacoatiara (Rio de Janeiro).',
      'img/ilc.png'
      ),
    clOnda(
      2, 
      'Reef Break', 
      'Point Break é a onda que quebra no fundo de pedra. Pelo fato das pedras proporcionarem estabilidade à bancada onde a onda vai quebrar, as características desse tipo de onda para surfar são mais constantes, isto é, com menos variações do que os Beach Breaks. Surfar em um fundo de pedra pode deixar as surfistas iniciantes um pouco receosas. E não é para menos, já que bater nas pedras durante a queda realmente pode ser perigoso. Portanto, fica aqui a nossa dica de ouro: procure sempre a ajuda de uma professora de surf que conheça o local. As ondas no fundo de pedra têm o potencial de serem bem mais longas do que as que quebram no fundo de areia. Alguns Point Breaks brasileiros são a Praia da Silveira (Santa Catarina) e o Pontal de Baía Formosa (Rio Grande do Norte).',
      'img/reefBreak.jpg'
      ),
    clOnda(
      3, 
      'Point Break', 
      'Point Break é a onda que quebra no fundo de pedra. Pelo fato das pedras proporcionarem estabilidade à bancada onde a onda vai quebrar, as características desse tipo de onda para surfar são mais constantes, isto é, com menos variações do que os Beach Breaks. Surfar em um fundo de pedra pode deixar as surfistas iniciantes um pouco receosas. E não é para menos, já que bater nas pedras durante a queda realmente pode ser perigoso. Portanto, fica aqui a nossa dica de ouro: procure sempre a ajuda de uma professora de surf que conheça o local. As ondas no fundo de pedra têm o potencial de serem bem mais longas do que as que quebram no fundo de areia. Alguns Point Breaks brasileiros são a Praia da Silveira (Santa Catarina) e o Pontal de Baía Formosa (Rio Grande do Norte).',
      'img/poiBreak.jpg'
      ),
    clOnda(
      4, 
      'Crumbly', 
      'Este tipo de onda não é muito forte, são ideais para quem está aprendendo a surfar. Isso se deve ao fato de não serem muito íngremes e nem muito rápidas. Além disso, são ótimas para os surfistas mais experientes, pois a face delas é ideal para praticar manobras e se aperfeiçoar.',
      'img/Crumbly.jpeg'
      ),
    clOnda(
      5, 
      'Tube', 
      'A onda tipo tubo é uma onda oca, e é a mais procurada pelos surfistas. Quem já teve a oportunidade de surfar em uma delas sempre descreve como uma experiência incrível, estar rodeado pela água ao mesmo tempo em que continua se movendo pela onda. Para os iniciantes, o melhor é ficar longe delas. O ideal é continuar ganhando experiência em ondas mais fáceis para depois tentar a sorte em um tubo.',
      'img/Tube.jpeg'
      ),
  ];

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
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Pesquise por ondas...'),
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
                                lOnda[index].imgOnda,
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
                                lOnda[index].tipoOnda,
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
                                            lOnda[index].descOnda,
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
            itemCount: lOnda.length,
          ),
        ),
      ),
    );
  }
}
