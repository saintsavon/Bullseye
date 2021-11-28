//
//  ContentView.swift
//  Bullseye
//
//  Created by Jaylen Scott on 11/26/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        VStack {
            Text("PUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0) // This has to be above multilineTextAlignment
                .multilineTextAlignment(.center)
                .lineSpacing(4)
                .font(.footnote)
            Text(String(game.target))
                .fontWeight(.black)
                .font(.largeTitle)
                .kerning(-1.0)
            HStack {
                Text("1")
                    .bold()
                Slider(value: self.$sliderValue, in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            Button(action:{
                print("Hello, SwiftUI!")
                self.alertIsVisible = true
            }) {
                Text("HIT ME")
            }
            .alert(isPresented: $alertIsVisible, content: {
                let roundedValue = Int(self.sliderValue.rounded())
                
                return Alert(title: Text("Hello there!"), message: Text("The sliders value is \(roundedValue).\n" + "You scored \(self.game.points(sliderValue: roundedValue)) points this round."), dismissButton: .default(Text("Awesome")))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
