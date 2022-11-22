//
//  MemoryGame.swift
//  App-Memorizer
//
//  Created by Geiziane alexandre on 15/11/22.
//
import Foundation
import SwiftUI

struct MemoryGame<CartaoConteudo> {
    var cartaos: Array <Cartao>
    
    func Escolha(cartao: Cartao){
        print("cartão escolhido:\(cartaos)")
    }
    
    init(numerosDeParesDoCartao: Int, cartaoConteudoFuncao:(Int) -> CartaoConteudo){
        cartaos = Array<Cartao>()
    for parDeInicio in 0..<numerosDeParesDoCartao{
        let content = cartaoConteudoFuncao(parDeInicio)
        cartaos.append(Cartao(conteudo: content, id: parDeInicio*2))
        cartaos.append(Cartao(conteudo: content, id:parDeInicio*2+1))
        }
        
    }
    
    
    
    struct Cartao: Identifiable{
        var viraParaCima:Bool = true
        var compativel:Bool = false
        var conteudo: CartaoConteudo
        var id: Int
    }
}
