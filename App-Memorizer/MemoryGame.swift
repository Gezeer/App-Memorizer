//
//  MemoryGame.swift
//  App-Memorizer
//
//  Created by Geiziane alexandre on 15/11/22.
//

import Foundation

struct MemoryGame<CartaoConteudo> {
    var cartaos: Array <Cartao>
    
    func Escolha(cartaos: Cartao){
        print("cartão escolhido:\(cartaos)")
    }
    
    init(numerosDeParesDoCartao: Int){
        cartaos = Array<Cartao>()
        for parDeInicio in 0..<numerosDeParesDoCartao{
            cartaos.append(Cartao(viraParaCima: <#T##Bool#>, compativel: <#T##Bool#>, conteudo: <#T##CartaoConteudo#>))
        }
        
    }
    
    
    
    struct Cartao{
        var viraParaCima:Bool
        var compativel:Bool
        var conteudo: CartaoConteudo
    }
}
