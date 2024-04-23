//
//  MediumView.swift
//  TicTacToe
//
//  Created by Michael Peroulas   on 4/17/24.
//

import SwiftUI

struct MediumView: View {
    var body: some View {
        VStack {
            
            Text("Medium View")
            
            
            
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
