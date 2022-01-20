//
//  TelaInicial.swift
//  TaliESeusAmigos
//
//  Created by Talita Nunes dos Santos on 14/01/22.
//

import SwiftUI


struct TelaInicialView: View {
    
    
    let nomesOracoes = ["VIDA", "SALVAÇÃO", "PECADOS","OBEDIÊNCIA", "CRIAÇÃO", "CORAÇÃO PURO", "AMAR AO PRÓXIMO", "AMAR A DEUS"]
    
    let tituloImagemOracoes = ["VIDAcard", "SALVAÇÃOcard", "PECADOScard","OBEDIÊNCIAcard", "CRIAÇÃOcard", "CORAÇÃO PUROcard", "AMAR AO PRÓXIMOcard", "AMAR A DEUScard"]
    
    
    var blocosHistorias: [BlocoHistorias] = [
        BlocoHistorias(id: 0, textos: ["cricaoCapa","criacaoUm", "criacaoDois", "criacaoTres", "criacaoQuatro", "criacaoCinco", "criacaoSeis", "criacaoSete", "criacaoOito"]),
        BlocoHistorias(id: 1, textos: ["quedaCapa", "quedaUm", "quedaDois", "quedaTres", "quedaQuatro", "quedaCinco", "quedaSeis", "quedaSete", "quedaOito", "quedaNove", "quedaDez", "quedaOnze"]),
        BlocoHistorias(id: 2, textos: ["jesusCapa", "jesusUm", "jesusDois", "jesusTres", "jesusQuatro", "jesusCinco", "jesusSeis", "jesusSete", "jesusOito", "jesusNove", "jesusDez"])
        
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
                        
                        
                        VStack {
                            Button {
                                
                                mostrarModal = true
    //                            print("Deu bom")
                            } label: {
                                Image(systemName: "lightbulb.circle")
                                

                            }
                            .padding(.top, 40)
                            .padding(.all)
                            .padding(.trailing, 20)
                            .foregroundColor(Color.purple)
                            .sheet(isPresented: $mostrarModal, onDismiss: {self.mostrarModal = false}) {
                                TelaOrientacaoView()
                        }
                            
                        }
                        .padding(.top)
                        .padding(.trailing)
                        
                    }
                }
                
                
                .frame(height: 400)
                
                VStack(alignment: .leading,spacing: 15) {
                    HStack(){
                        Text("Histórias 📖")
                            .font(.system(size: 27, weight: .bold, design: .default))
                            .padding(.leading,
                                     20)
                        Spacer()
                        
                        
                            .padding(.trailing, 10)
                        
                        
                        
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
                                                TelaHistoriaView(imagens: blocosHistorias[index].textos)) {
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
        }
    }
}

struct TelaInicial_Previews: PreviewProvider {
    static var previews: some View {
        TelaInicialView()
    }
}
