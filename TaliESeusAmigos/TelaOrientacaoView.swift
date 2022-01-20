//
//  TelaOrientacaoView.swift
//  TaliESeusAmigos
//
//  Created by Talita Nunes dos Santos on 19/01/22.
//

import SwiftUI

struct TelaOrientacaoView: View {
    var body: some View {
        TabView {
            
            ZStack {
                VStack{
                    
                    Text("Olá, bem-vindo ao aplicativo da Tali e seus amigos. Aqui você terá acesso ao conteúdo de Cosmovisão Cristã Reformada para utilização com crianças. ")
                        .padding()
                        .font(.system(size: 22, weight: .light, design: .default))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                    //                    Spacer()
                    
                    HStack{
                        Image("talitaOrientacoes")
                            .resizable()
                            .frame(width: 183, height: 270)
                            .padding(.leading, 200)
                    }
                    
                }
            }
            
            ZStack {
                VStack{
                    
                    Text("Recomendamos que após a leitura da história, vocês usaem a bíblia na referência que colocamos, pois mesmo conhecendo a história é de extrema importância que a criança saiba desde cedo que a Bíblia é a Palavra de Deus para nós.  E lá está dispota de forma completa as maravilhas que Deus,  a nossa regra de fé e prática. ")
                        .padding()
                        .font(.system(size: 22, weight: .light, design: .default))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                    //                    Spacer()
                    
                    HStack{
                        Image("talitaOrientacoes")
                            .resizable()
                            .frame(width: 183, height: 270)
                            .padding(.leading, 200)
                    }
                    
                }
            }
            
            ZStack {
                VStack{
                    
                    Text("Quanto ao momento de oração, pode ser utilizado ligado a temática da história lida, recomendamos que leia a história com a criança e logo depois faça o momento de oração. Sempre a lembre que ela tem livre acesso a Deus  por meio de Jesus e pode conversar com Ele sempre, do jetinho dela.")
                        .padding()
                        .font(.system(size: 22, weight: .light, design: .default))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                    //                    Spacer()
                    
                    HStack{
                        Image("talitaOrientacoes")
                            .resizable()
                            .frame(width: 183, height: 270)
                            .padding(.leading, 200)
                    }
                    
                }
            }
            
            ZStack {
                VStack{
                    
                    Text("Para ficar por dentro de todas as novidades da Tali e seus amigos siga no Instagram: @talieseusaamigos e acompanhe também no site talieseusamigos.com.br")
                        .padding()
                        .font(.system(size: 22, weight: .light, design: .default))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                    //                    Spacer()
                    
                    HStack{
                        Image("talitaOrientacoes")
                            .resizable()
                            .frame(width: 183, height: 270)
                            .padding(.leading, 200)
                    }
                    
                }
            }
            
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .background(Color("Roxo"))
        
    }
}



struct TelaOrientacaoView_Previews: PreviewProvider {
    static var previews: some View {
        TelaOrientacaoView()
    }
}
