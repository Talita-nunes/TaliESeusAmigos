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
            
            //                    Text("Momento de oração 🙏🏼")
            //                        .font(.system(size: 27, weight: .bold, design: .default))
            
            Image(tituloImagem)
                .resizable()
                .frame(width: 360, height: 645, alignment: .center)
            
            Spacer()
            
        }
//        .navigationTitle(Text("Momento de oração 🙏🏼"))
    }
}

struct TelaOracaoView_Previews: PreviewProvider {
    static var previews: some View {
        TelaOracaoView(tituloImagem: "VIDAcard")
    }
}
