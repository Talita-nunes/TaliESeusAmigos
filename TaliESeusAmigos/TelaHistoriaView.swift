//
//  TelaHistoriaView.swift
//  TaliESeusAmigos
//
//  Created by Talita Nunes dos Santos on 18/01/22.
//

import SwiftUI

struct TelaHistoriaView: View {
    
    var imagens: [String]
    var textosRoteiro: [String]
    
    var body: some View {
        NavigationView {
            
            
            ScrollView(.horizontal, showsIndicators: true) {
                
                HStack(spacing: 20) {
                    ForEach((0..<imagens.count), id: \.self) { i in
                        ZStack {
                            Image(imagens[i])
                                .resizable()
                                .frame(width: 383, height: 687, alignment: .center)
                                .padding(.bottom)
                            
                            VStack {
                                Text(textosRoteiro[i])
                                    .frame(width: 310, height: 200, alignment: .center)
                                .font(.system(size: 16, weight: .light, design: .default))
                                .multilineTextAlignment(.center)
                                .padding(.top, 40)
                                .foregroundColor(Color("Roxo"))
                                Spacer()

                            }
                            
                        }
                        .padding(.horizontal)
                    }
                }
                 Spacer()
                .padding()

            }
            
        }
        
    }
}

struct TelaHistoriaView_Previews: PreviewProvider {
    static var previews: some View {
        TelaHistoriaView(imagens: ["quedaUm"], textosRoteiro: ["Jesus estava vivo, ela saiu correndo e disse aos discípulos, Ele ressuscitou, Ele ressuscitou! Por isso, quem crê nele não morre nunca, mas tem a vida eterna. Seus inimigos foram envergonhados. Jesus é a Palavra Viva, o Verbo da Vida."])
    }
}
