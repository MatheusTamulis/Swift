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
    //var isFaceUp: Bool = false;  (Posso fazer dos dois jeitos, já que se ele é false só pode ser bool.
    @State var isFaceUp = false;
    
    var body: some View
    {
        ZStack
        {
            //Ao inves de var usamos let pois é uma constante e nao vai mudar seu valor
            let base = RoundedRectangle(cornerRadius: 12);
            
            // se nao tiver o == depois de uma var bool é pq ela sempre vem como true.
            if isFaceUp
            {
                base.fill(.white);
                base.strokeBorder(lineWidth: 2);
                Text("👻").font(.largeTitle);
            }
            else
            {
                RoundedRectangle(cornerRadius: 12)
            }
            
        }
        
        .onTapGesture
        {
            //isFaceUp = !isFaceUp;
            isFaceUp.toggle();
        }
    }
}




















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
