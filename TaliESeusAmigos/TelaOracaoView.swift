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
            
            VStack {
                Image(tituloImagem)
                    .resizable()
                .frame(width: 360, height: 645, alignment: .center)
                .padding(.bottom, 50)
//                Spacer()
//                Spacer()

            }
//                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }
        .navigationTitle(Text("Momento de oração 🙏🏼"))
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TelaOracaoView_Previews: PreviewProvider {
    static var previews: some View {
        TelaOracaoView(tituloImagem: "VIDAcard")
    }
}
