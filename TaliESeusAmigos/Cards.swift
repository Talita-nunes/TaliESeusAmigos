//
//  Cards.swift
//  TaliESeusAmigos
//
//  Created by Talita Nunes dos Santos on 14/01/22.
//

import SwiftUI

struct CollectionHistórias {
    var id: Int
    let image: String
    
}


struct Cards: View {
    
    let Histórias:[CollectionHistórias] = [
        CollectionHistórias(id: 0, image: "1"),
        CollectionHistórias(id: 1, image: "2"),
        CollectionHistórias(id: 2, image: "3")
    ]
    
    var body: some View {
            VStack{
                Image("\(String(describing: CollectionHistórias.init))")
                    .resizable()
                    .frame(width: 3555, height: 472)
            }
    }
}

struct Cards_Previews: PreviewProvider {
    static var previews: some View {
        Cards()
    }
}
