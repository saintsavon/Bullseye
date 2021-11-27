//
//  ContentView.swift
//  Bullseye
//
//  Created by Jaylen Scott on 11/26/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("PUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0) // This has to be above multilineTextAlignment
                .multilineTextAlignment(.center)
                .lineSpacing(4)
                .font(.footnote)
            Text("89")
                .fontWeight(.black)
                .font(.largeTitle)
                .kerning(-1.0)
            HStack {
                Text("1")
                    .bold()
                Slider(value: .constant(50), in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            Button(action:{}) {
                Text("HIT ME")
            }
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
