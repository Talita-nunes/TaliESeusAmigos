//
//  Cards.swift
//  TaliESeusAmigos
//
//  Created by Talita Nunes dos Santos on 14/01/22.
//

import SwiftUI

//struct CollectionHistórias {
//    var id: Int
//    let image: String
//
//}


struct CardsHistórias: View {
    
//    let Histórias:[CollectionHistórias] = [
//        CollectionHistórias(id: 0, image: "1"),
//        CollectionHistórias(id: 1, image: "2"),
//        CollectionHistórias(id: 2, image: "3")
//    ]
    
    var id: Int
//    var cards: 
    
    var body: some View {
            VStack{
                Image("\(String(id))")
                    .resizable()
                    .frame(width: 285, height: 375)
            }
    }
}

struct Cards_Previews: PreviewProvider {
    static var previews: some View {
        CardsHistórias(id: 0)
        
    }
}
