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
            
            Button(action: {
                everything.popUp = true
            }, label: {
                Text("Themes")
                    .padding()
                    .bold()
            }) .frame(maxWidth: .infinity, alignment: .topTrailing)
            
            HStack{
                Text("Medium Mode")
                    .font(.system(size: 65))
                    .bold()
                    .foregroundColor(.yellow)
                    .underline(color: Color.black)
                
                
            }
            
            
                HStack{
                    
                    Spacer()
                    
                    HStack{
                        Text("Wins:")
                        Text("\(everything.wins)")
                    } .font(.system(size: everything.winsSize))
                        .bold()
                    
                    Spacer()
                    
                    HStack{
                        Text("Ties:")
                        Text("\(everything.ties)")
                    }.padding()
                        .font(.system(size: everything.tiesSize))
                        .bold()
                    
                    Spacer()
                    
                    HStack{
                        Text("Losses:")
                        Text("\(everything.losses)")
                    } .font(.system(size: everything.lossesSize))
                        .bold()
                    Spacer()
                }
                .frame(width:1000)
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
                
              
                if everything.popUp{
                    POPUP()
                }
                
                Spacer()
                Spacer()
                Spacer()
                
            } .onAppear(){
                everything.difficulty = "medium"
                
            }
        }
    }




