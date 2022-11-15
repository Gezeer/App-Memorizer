//
//  EmojimemoryGame.swift
//  App-Memorizer
//
//  Created by Geiziane alexandre on 15/11/22.
//

import SwiftUI

class EmojiMemoryGame{
    private var  modelo: MemoryGame<String>
    
    //MARK: - Acesso ao Modelo
    
    var cartaos: Array<MemoryGame<String>.Cartao>{
        modelo.cartaos
    }
    
    //MARK: - Intent(s)
    
    func Escolha(cartaos: MemoryGame<String> .Cartao){
        modelo.Escolha(cartaos: cartaos)
        
    }
}
