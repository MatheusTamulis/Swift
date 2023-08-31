//
//  ContentView.swift
//  JogoDaMemoria
//
//  Created by Ana Paula Barbosa Zacatei on 27/08/23.
//

import SwiftUI

//Struct = estrutura e estamos chamando ele de ContentView

//View Significa `Behaves like a...`  Significa que a estrutura ContentView se comporta como uma view
struct ContentView: View
{
    
    //Computed Property - Uma propriedade
    var body: some View
    {
        HStack
        {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .padding()
        .foregroundColor(.orange)
        
    }
}

struct CardView: View
{
    
    var isFaceUp: Bool = false;
    
    var body: some View
    {
        ZStack(content:
        {
            // se nao tiver o == depois de uma var bool é pq ela sempre vem como true.
            if isFaceUp
            {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 5)
                Text("👻").font(.largeTitle)
            }
            else
            {
                RoundedRectangle(cornerRadius: 12)
            }
            
        })
    }
}




















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
