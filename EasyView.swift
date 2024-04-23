//
//  EasyView.swift
//  TicTacToe
//
//  Created by Michael Peroulas   on 4/17/24.
//

import SwiftUI

struct EasyView: View {
    @EnvironmentObject var everything: Everything
    var body: some View {
        VStack {
            
            Text("Easy View")
            
            Image(everything.image1)
                .onTapGesture {
                    everything.image1 = "X"
                }
            RoundedRectangle(cornerRadius: 10)
                       .frame(width: 10, height: 500)
                       .offset(x: -100, y: 306)
            RoundedRectangle(cornerRadius: 10)
                       .frame(width: 10, height: 500)
                       .offset(x: 100, y: -200)
            RoundedRectangle(cornerRadius: 10)
                       .frame(width: 500, height: 10)
                       .offset(x: 0, y: -400)
            RoundedRectangle(cornerRadius: 10)
                       .frame(width: 500, height: 10)
                       .offset(x: 0, y: -600)    
        }
    }
}
