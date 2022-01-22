//
//  TelaInicial.swift
//  TaliESeusAmigos
//
//  Created by Talita Nunes dos Santos on 14/01/22.
//

import SwiftUI


struct TelaInicialView: View {
    
    
    let nomesOracoes = ["VIDA", "SALVAÇÃO", "PECADOS","OBEDIÊNCIA", "CRIAÇÃO", "CORAÇÃO PURO", "AMAR AO PRÓXIMO", "AMAR A DEUS"]
    
    let tituloImagemOracoes = ["VIDAcard", "SALVAÇÃOcard", "PECADOScard","OBEDIÊNCIAcard", "CRIAÇÃOcard", "CORAÇÃOcard", "AMAR AO PRÓXIMOcard", "AMAR A DEUScard"]
    
    
    var blocosHistorias: [BlocoHistorias] = [
        BlocoHistorias(id: 0, imagem: ["criacaoCapa","criacaoUm", "criacaoDois", "criacaoTres", "criacaoQuatro", "criacaoCinco", "criacaoSeis", "criacaoSete", "criacaoOito"], textos: ["", "Deus criou todo o universo em somente 6 dias, vocês sabiam disso? Fica ligado para saber como foi que Deus criou cada coisa em todos esses dias.", "A Terra era sem forma e vazia, havia escuridão pelo abismo e o Espírito de Deus pairava sobre as águas, e Deus disse: Haja luz, e houve Luz. Deus viu que a luz era boa e assim chamou-a de dia e a escuridão de noite. Assim foi o primeiro dia.", "E Deus disse, haja uma expansão no meio das águas, e fez os céus e as águas do mar e a terra, e assim foi o segundo dia. Observe como é grande o céu e as águas do mar, quão grande e belas são as obras do Nosso Senhor.", "Na terra Deus ordenou que houvesse árvores e frutos, e viu Deus que era bom, foi assim o terceiro dia. Lembre de quantas frutas nós conhecemos não é? Ou quantidade de flores que colorem nossos jardins.", "Deus ordenou que houvesse luz para separar o dia e a noite, sendo a lua e o Sol, assim também as estrelas. Viu Deus que era bom, assim finalizou o quarto dia. Que imensidão de estrelas temos no céu, Deus conhece cada uma de forma única.", "Deus ordenou que houvesse luz para separar o dia e a noite, sendo a lua e o Sol, assim também as estrelas. Viu Deus que era bom, assim finalizou o quarto dia. Que imensidão de estrelas temos no céu, Deus conhece cada uma de forma única.", "Os animais da terra, desde o gigante do elefante até a singela formiga Deus criou no sexto dia, ah e vocês sabiam que o homem, a sua imagem e semelhança, Deus também fez neste dia e ordenou que ele dominasse todos os animais, as árvores e os frutos.", "Deus é perfeito, Ele é o primeiro no universo, Ele quem criou tudo, é o maior dos artistas, o mais criativo dos criadores, louvamos a Ele por essa benção."]),
        BlocoHistorias(id: 1, imagem: ["quedaCapa", "quedaUm", "quedaDois", "quedaTres", "quedaQuatro", "quedaCinco", "quedaSeis", "quedaSete", "quedaOito", "quedaNove", "quedaDez", "quedaOnze"], textos: ["", "Deus criou tudo perfeito, Ele deu a Adão e Eva um paraíso repleto de animais, frutos e outras diversas coisas que eram magníficas e surpreendentes.", "Deus os encontrava todos os dias, ao final da tarde. Ele havia falado para eles que poderiam comer de todos os frutos, menos do conhecimento do bem e do mal.", "Porém, satanás veio na forma de uma cobra e deu inúmeros motivos para que Adão e Eva desobedecessem à ordem de Deus e pecaram, o pecado nos afasta de Deus.", "A serpente conversou com Eva, perguntou se Deus havia dito que eles não poderiam comer o fruto daquela árvore. E Eva disse que Deus havia ordenado para que eles não comessem a árvore do meio do jardim.", "Mas a serpente cheia de mentiras para tentar Eva disse que eles não morreriam, mas sim seriam como Deus, e então Eva escutou a serpente e pecou, comeu o fruto que Deus havia falado para ela não comer.", "Mas a serpente cheia de mentiras para tentar Eva disse que eles não morreriam, mas sim seriam como Deus, e então Eva escutou a serpente e pecou, comeu o fruto que Deus havia falado para ela não comer.", "Logo que perceberam, ficaram envergonhados e correram se esconder e procurar algo para se cobrirem.", "Quando no final da tarde Deus os chamou, eles falaram ao Senhor que estavam escondidos por estarem nus, Adão culpou Eva e Eva culpou a serpente, é meus amigos, o pecado os deu consequências.", "Quando no final da tarde Deus os chamou, eles falaram ao Senhor que estavam escondidos por estarem nus, Adão culpou Eva e Eva culpou a serpente, é meus amigos, o pecado os deu consequências.", "Deus os deu vestes com peles de animais e os expulsou do jardim, para que eles não voltassem, Deus colocou um anjo com espadas de fogo.", "Que história triste não é mesmo? O pecado nos separa de Deus, quando desobedecemos a Deus estamos pecando contra ele. Mas Deus não acabou assim a história, Ele nos ama e nos deu Jesus para podermos ter acesso a Ele."]),
        BlocoHistorias(id: 2, imagem: ["jesusCapa", "jesusUm", "jesusDois", "jesusTres", "jesusQuatro", "jesusCinco", "jesusSeis", "jesusSete", "jesusOito", "jesusNove", "jesusDez"], textos: ["", "Jesus nasceu em Belém, de uma maneira muito simples, em um estábulo, onde ficam os animaizinhos, havia uma manjedoura e lá foi colocado o Filho de Deus, Majestoso, Príncipe da Paz.", "José e Maria tiveram que ir para Belém para participar do censo, a cidade estava muito cheia e não havia lugar para que eles se hospedassem e Maria desse a Luz ao menino Jesus.", "Quando Jesus nasceu, uma grande estrela surgiu no Céu de Belém e os magos foram de encontro a ela pois sabiam que quando a encontrassem ali também estaria Jesus. Quando encontraram, entregaram os presentes que haviam separado para o Rei de Israel.", "Jesus veio para nos trazer a grande esperança, Deus nos enviou seu filho para podermos ter livre acesso a Ele.", "Quando Jesus cresceu, escolheu 12 discípulos para caminhar com ele, na noite antes dele morrer, Jesus e os discípulos tiveram um jantar muito especial, a última ceia. Neste dia tão especial eles viram mais uma vez que devem amar uns aos outros assim como Deus os amou.", "Nesta noite, Jesus anunciou que um dos discípulos iria traí-lo, o entregando para o exército Romano. Jesus também falou que depois de 3 dias ele ressuscitaria, assim que comeram, subiram os discípulos e Jesus e foram ao monte das Oliveiras.", "Quando chegou ao monte das Oliveiras, se afastou dos discípulos e começou a orar, os discípulos dormiram. Depois de um tempo, chegaram os sacerdotes e as pessoas que não gostavam de Jesus e o prenderam.", "Jesus precisou carregar a sua própria cruz, imaginem, uma madeira muito pesada. Lá em cima quando ele estava pendurado, ele estava com os braços e pês presos e ainda com uma coroa de espinhos, imaginem que grande dor.", "O Filho de Deus morreu, sofreu a dor da morte por nós. Mas a história não acabou assim, após 3 dias ele ressuscitou e a morte não o venceu. No domingo, Maria Madalena foi ao sepulcro e viu que a pedra tinha sido removida.", "Jesus estava vivo, ela saiu correndo e disse aos discípulos, Ele ressuscitou, Ele ressuscitou! Por isso, quem crê nele não morre nunca, mas tem a vida eterna. Seus inimigos foram envergonhados. Jesus é a Palavra Viva, o Verbo da Vida."])
        
    ]
    
    
    private func getScrollOffset(_ geometry: GeometryProxy) -> CGFloat {
        geometry.frame(in: .global).minY
    }
    
    private func getHeightForHeaderImage(_ geometry: GeometryProxy) -> CGFloat {
        let offset = getScrollOffset(geometry)
        let imageHeight = geometry.size.height
        
        if offset > 0 {
            return imageHeight + offset
        }
        
        return imageHeight
    }
    
    private func getOffsetForHeaderImage(_ geometry: GeometryProxy) -> CGFloat {
        let offset = getScrollOffset(geometry)
        
        // Image was pulled down
        if offset > 0 {
            return -offset
        }
        
        return 0
    }
    
    @State var mostrarModal = false
    
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical, showsIndicators: true, content:{
                
                GeometryReader{ reader in
                    
                    ZStack{
                        
                        Image("main")
                            .resizable()
                            .scaledToFill()
                            .clipped()
                            .frame(width: reader.size.width, height: self.getHeightForHeaderImage(reader))
                            .offset(x: 0, y: self.getOffsetForHeaderImage(reader))
                 
                        
                    }
                }
                
                
                .frame(height: 400)
                
                VStack(alignment: .leading,spacing: 15) {
                    HStack(){
                        Text("Histórias 📖")
                            .font(.system(size: 27, weight: .bold, design: .default))
                            .padding(.top, 20)
                            .padding(.leading, 20)

                        
                    }.padding(.trailing, 20)
                    
                    //                NavigationView {
                    //                    ScrollView {
                    //                        HStack{
                    //                            ForEach(Cards.idenfied(by: \.id)) { cards in Cards(cards: cards)}
                    //                        }
                    //                    }
                    //                }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack(spacing: 20) {
                            ForEach(0..<blocosHistorias.count) { index in
                                
                                NavigationLink(destination:
                                                TelaHistoriaView(imagens: blocosHistorias[index].imagem, textosRoteiro: blocosHistorias[index].textos)) {
                                    CardsHistórias(id: index)
                                    
                                }
                                
                                
                            }
                            
                        }
                        
                        .padding(.horizontal)
                    }
                    
                }
                
                VStack(alignment: .leading,spacing: 15) {
                    HStack(){
                        Text("Momento de oração 🙏🏼")
                            .font(.system(size: 27, weight: .bold, design: .default))
                            .padding(.leading,
                                     20)
                            .padding(.top, 22)
                        Spacer()
                        
                    }
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(0..<nomesOracoes.count) { index in
                                
                                NavigationLink(destination:
                                                TelaOracaoView(tituloImagem: tituloImagemOracoes[index])) {
                                    CardsOracao(nameImage: nomesOracoes[index])
                                    
                                    
                                }
                                
                            }
                            
                            
                        }
                        .padding(.vertical)
                        .padding(.horizontal)
                        .padding(.top, -20)
                    }
                    
                }
                
            })
                .edgesIgnoringSafeArea(.all)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        
                        Button{
                            mostrarModal = true
                        }
                    label:{
                        
                        Image(systemName: "lightbulb.circle")
                            .resizable()
                            .frame(width: 35, height: 35)
                        
                    }
                    .padding(.top, 20)
                    .foregroundColor(Color("Roxo"))
                    .sheet(isPresented: $mostrarModal, onDismiss: {self.mostrarModal = false}) {
                        TelaOrientacaoView()
                    }
                        
                    }
                    
                }
            
        }
    }
}

struct TelaInicial_Previews: PreviewProvider {
    static var previews: some View {
        TelaInicialView()
    }
}
