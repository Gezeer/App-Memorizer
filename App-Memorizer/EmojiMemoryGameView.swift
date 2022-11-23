//
//  ContentView.swift
//  App-Memorizer
//
//  Created by Geiziane alexandre on 15/11/22.
//
import Foundation
import SwiftUI

struct EmojiMemoryGameView: View {
  @ObservedObject  var viewModel:EmojiMemoryGame
    var body: some View {
        HStack{
            ForEach(viewModel.cartaos){cartao in
                CardView(cartao: cartao).onTapGesture{ viewModel.Escolha(cartao: cartao)
                    
                }
        }
    }
        .padding()
        .foregroundColor(Color.orange)
        .font(Font.largeTitle)
    }
}

struct CardView: View{
    var cartao: MemoryGame<String>.Cartao
    
    
    var body: some View{
        ZStack{
            if cartao.viraParaCima{
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
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
        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
    }
}
