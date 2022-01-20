//
//  BlocoHistoriasView.swift
//  TaliESeusAmigos
//
//  Created by Talita Nunes dos Santos on 18/01/22.
//

import SwiftUI

struct BlocoHistoriasView: View {
    
    var textoBlocoHistorias: [String]
    
    var body: some View {
        Text(textoBlocoHistorias[0])
        Text(textoBlocoHistorias[1])
    }
}

struct BlocoHistoriasView_Previews: PreviewProvider {

    
    static var previews: some View {
        BlocoHistoriasView(textoBlocoHistorias: ["textoBlocoHistorias"])
    }
}
