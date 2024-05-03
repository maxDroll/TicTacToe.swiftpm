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
                .font(.system(size: 55))
            
            HStack{
                VStack{
                    Text("WINS")
                        .font(.title)
                    Text("\(everything.wins)")
                }
                VStack{
                    Text("TIES")
                        .font(.title)
                    Text("\(everything.ties)")
                }.padding()
                VStack{
                    Text("LOSSES")
                        .font(.title)
                    Text("\(everything.losses)")
                }
            }
            ZStack{
                VStack{
                    HStack{
                        ImageView(imageName: everything.board[0].piece, pos: 1)
                            .foregroundColor(everything
                                .board[0].color)
                        ImageView(imageName: everything.board[1].piece, pos: 2)
                            .foregroundColor(everything
                                .board[1].color)
                        
                        ImageView(imageName: everything.board[2].piece, pos: 3)
                            .foregroundColor(everything
                                .board[2].color)
                        
                    }
                    HStack{
                        ImageView(imageName: everything.board[3].piece, pos: 4)
                            .foregroundColor(everything
                                .board[3].color)
                        
                        ImageView(imageName: everything.board[4].piece, pos: 5)
                            .foregroundColor(everything
                                .board[4].color)
                        
                        ImageView(imageName: everything.board[5].piece, pos: 6)
                            .foregroundColor(everything
                                .board[5].color)
                        
                    }
                    
                    HStack{
                        
                        ImageView(imageName: everything.board[6].piece, pos: 7)
                            .foregroundColor(everything
                                .board[6].color)
                        
                        ImageView(imageName: everything.board[7].piece, pos: 8)
                            .foregroundColor(everything
                                .board[7].color)
                        
                        ImageView(imageName: everything.board[8].piece, pos: 9)
                            .foregroundColor(everything
                                .board[8].color)
                        
                    }
                    
                }
                VStack(spacing:155){
                    Rectangle()
                        .frame(width: 620, height: 10)
                    Rectangle()
                        .frame(width: 620, height: 10)
                }
                HStack(spacing:205){
                    Rectangle()
                        .frame(width: 10, height: 470)
                    Rectangle()
                        .frame(width: 10, height: 470)
                }
            }
        }
        .onAppear(){
            everything.difficulty = "medium"
        }
    }
}
