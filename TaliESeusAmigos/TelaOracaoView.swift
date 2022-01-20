//
//  TelaOracaoView.swift
//  TaliESeusAmigos
//
//  Created by Talita Nunes dos Santos on 19/01/22.
//

import SwiftUI

struct TelaOracaoView: View {
    
    var tituloImagem: String
    
    var body: some View {
        NavigationView {
            
            ZStack {
                VStack{
                    Text("Momento de oração 🙏🏼")
                        .font(.system(size: 27, weight: .bold, design: .default))
                        .padding(.leading, 20)
                    Spacer()
                }
                
                HStack(spacing: 20) {
                    Image(tituloImagem)
                    
                }
                .padding(.horizontal)
                .padding(.bottom, 30)
            }
  
        }
    }
}

struct TelaOracaoView_Previews: PreviewProvider {
    static var previews: some View {
        TelaOracaoView(tituloImagem: "Oi")
    }
}
