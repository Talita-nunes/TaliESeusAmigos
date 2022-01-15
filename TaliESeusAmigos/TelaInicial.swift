//
//  TelaInicial.swift
//  TaliESeusAmigos
//
//  Created by Talita Nunes dos Santos on 14/01/22.
//

import SwiftUI


struct TelaInicial: View {

    var body: some View {
        
        ScrollView(.vertical, showsIndicators: true, content:{
            
            GeometryReader{ reader in
                
                Image("main")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width, height: reader.frame(in: .global).minY + 400)
            }
            
            
            .frame(height: 400)
            
            VStack(alignment: .leading,spacing: 15) {
                HStack(){
                    Text("Histórias 📖")
                        .font(.system(size: 27, weight: .bold, design: .default))
                        .padding(.leading,
                                 20)
                    Spacer()
                    Button(action: {}, label: {
                        Text("Ver todas")
                    })
                    
                        .padding(.trailing, 20)
                    
                    
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
                        ForEach(0..<10) {
                            Text("Item \($0)")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .frame(width: 200, height: 200)
                                .background(Color.red)
            }
            
           
                    }
                }
            }
            
        })
            .edgesIgnoringSafeArea(.all)
    }
}

struct TelaInicial_Previews: PreviewProvider {
    static var previews: some View {
        TelaInicial()
    }
}
