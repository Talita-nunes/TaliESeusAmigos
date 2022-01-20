//
//  CardsOracao.swift
//  TaliESeusAmigos
//
//  Created by Talita Nunes dos Santos on 17/01/22.
//

import SwiftUI

struct CardsOracao: View {
    
//    let Histórias:[CollectionHistórias] = [
//        CollectionHistórias(id: 0, image: "1"),
//        CollectionHistórias(id: 1, image: "2"),
//        CollectionHistórias(id: 2, image: "3")
//    ]
    
    var nameImage: String
    

    
    var body: some View {
            VStack{
                Image(nameImage)
                    .resizable()
                    .frame(width: 296, height: 302)
            }
    }
}

struct CardsOracao_Previews: PreviewProvider {
    static var previews: some View {
        CardsOracao(nameImage: "AMAR AO PRÓXIMO")
    }
}
