//
//  EmojimemoryGame.swift
//  App-Memorizer
//
//  Created by Geiziane alexandre on 15/11/22.
//
import SwiftUI


class EmojiMemoryGame{
    
    
    private var  model: MemoryGame<String> = EmojiMemoryGame.criarMemoryGame()
    
    static func criarMemoryGame() -> MemoryGame<String>{
        let emojis: Array<String> = ["👻","🎃"]
        return MemoryGame<String>(numerosDeParesDoCartao: 2) { parDeIncio in
            return emojis[parDeIncio]
        }
        //MARK: - Acesso ao Modelo
    }
        var cartaos: Array<MemoryGame<String>.Cartao>{
            model.cartaos
        }
            //MARK: - Intent(s)
            
            func Escolha(cartao: MemoryGame<String> .Cartao){
                model.Escolha(cartao: cartao)
                
            }
        }
    

