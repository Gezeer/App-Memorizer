//
//  ContentView.swift
//  App-Memorizer
//
//  Created by Geiziane alexandre on 15/11/22.
//
import Foundation
import SwiftUI

struct ContentView: View {
    var viewModel:EmojiMemoryGame
    var body: some View {
        HStack{
            ForEach(viewModel.cartaos){cartao in
            CardView(cartao: cartao)
        }
    }
        .padding()
        .foregroundColor(Color.white)
        .font(Font.largeTitle)
    }
}

struct CardView: View{
    var cartao: MemoryGame<String>.Cartao
    
    
    var body: some View{
        ZStack{
            if cartao.viraParaCima{
                RoundedRectangle(cornerRadius: 10.0).fill(Color.orange)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(cartao.conteudo)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}












struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
