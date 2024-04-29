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


//            RoundedRectangle(cornerRadius: 10)
//                       .frame(width: 10, height: 500)
//                       .offset(x: -100, y: 306)
//            RoundedRectangle(cornerRadius: 10)
//                       .frame(width: 10, height: 500)
//                       .offset(x: 100, y: -200)
//            RoundedRectangle(cornerRadius: 10)
//                       .frame(width: 500, height: 10)
//                       .offset(x: 0, y: -400)
//            RoundedRectangle(cornerRadius: 10)
//                       .frame(width: 500, height: 10)
//                       .offset(x: 0, y: -600)
struct ImageView: View {
    @EnvironmentObject var everything: Everything
    var imageName: String
    var pos: Int
    var body: some View {
        Image(systemName: imageName)
                    .resizable()
                    .foregroundColor(everything.imageColor3)
                    .onTapGesture {
                        everything.playerTap(position: pos)
                    }
    }
}
