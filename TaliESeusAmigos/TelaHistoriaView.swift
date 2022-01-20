//
//  TelaHistoriaView.swift
//  TaliESeusAmigos
//
//  Created by Talita Nunes dos Santos on 18/01/22.
//

import SwiftUI

struct TelaHistoriaView: View {
    
    var imagens: [String]
    
    var body: some View {
        NavigationView {
            
            
            ScrollView(.horizontal, showsIndicators: true) {
                
                HStack(spacing: 20) {
                    ForEach(imagens, id: \.self) { imagem in
                        Image(imagem)
                    }
                }
//                .padding(.horizontal)
                .padding(.bottom, 30)
            }
            
        }
        
    }
}

struct TelaHistoriaView_Previews: PreviewProvider {
    static var previews: some View {
        TelaHistoriaView(imagens: ["oi"])
    }
}
