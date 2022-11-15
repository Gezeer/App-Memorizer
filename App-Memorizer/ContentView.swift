//
//  ContentView.swift
//  App-Memorizer
//
//  Created by Geiziane alexandre on 15/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            ForEach(0..<4){index in
            CardView(viradoParaCima:false)
        }
    }
        .padding()
        .foregroundColor(Color.orange)
        .font(Font.largeTitle)
    }
}

struct CardView: View{
    var viradoParaCima: Bool
    var body: some View{
        ZStack{
            if viradoParaCima {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}












struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
