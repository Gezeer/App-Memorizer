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
        Grid(items: viewModel.cartaos){ cartao in
           CardView(cartao: cartao).onTapGesture{ self.viewModel.Escolha(cartao: cartao)
                    
                }
        
    }
        .padding()
        .foregroundColor(Color.orange)
       
    }
}

struct CardView: View{
    var cartao: MemoryGame<String>.Cartao
    
    
    var body: some View{
        GeometryReader {geometry in
            self.body(for:geometry.size)
        }
    }
    func body(for size: CGSize) -> some View{
        ZStack{
            if cartao.viraParaCima{
                RoundedRectangle(cornerRadius: cornerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: cornerRadius).stroke(lineWidth: edgeLineWidth)
                Text(cartao.conteudo)
            } else {
                RoundedRectangle(cornerRadius: cornerRadius).fill()
            }
        }
        .font(Font.system(size: fontSize(for: size)))
    }
    
    
    
    //MARK: - DESENHANDO Constants
    
    let cornerRadius: CGFloat = 10.0
    let edgeLineWidth: CGFloat = 3
    let fontScaleFactor: CGFloat = 0.75
    
    
    func fontSize(for size: CGSize) -> CGFloat{
        min(size.width, size.height)*0.75
    }
}
    
    
    
    
    
    
    
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            EmojiMemoryGameView(viewModel: EmojiMemoryGame())
        }
    }

