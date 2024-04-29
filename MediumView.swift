//
//  MediumView.swift
//  TicTacToe
//
//  Created by Michael Peroulas   on 4/17/24.
//

import SwiftUI

struct MediumView: View {
    @EnvironmentObject var everything: Everything
    var body: some View {
        VStack {
            
            Text("Medium View")
            
            
            ZStack{
                
                VStack{
                    Text("Wins: \(everything.wins)")
                    Text("Loses: \(everything.losses)")
                    Text("Ties: \(everything.ties)")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title)

                     HStack(spacing: 170){
                         RoundedRectangle(cornerRadius: 10)
                             .frame(width: 10, height: 500)
                         RoundedRectangle(cornerRadius: 10)
                             .frame(width: 10, height: 500)
                     }
                     VStack(spacing: 170){
                         RoundedRectangle(cornerRadius: 10)
                             .frame(width: 500, height: 10)
                         RoundedRectangle(cornerRadius: 10)
                             .frame(width: 500, height: 10)
                     }
                     
                 }
        }
    }
}
