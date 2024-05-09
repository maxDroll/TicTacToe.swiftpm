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
            
            Button(action: {
                everything.popUp = true
            }, label: {
                Text("Themes")
                    .bold()
            }) .frame(maxWidth: .infinity, alignment: .topTrailing)
            
            HStack{
                Text("Easy Mode")
                    .font(.system(size: 65))
                    .bold()
                    .foregroundColor(.green)
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
                everything.difficulty = "easy"
                
            }
        }
    }




struct ImageView: View {
    @EnvironmentObject var everything: Everything
    var imageName: String
    var pos: Int
    var body: some View {
        Image(systemName: imageName)
                    .resizable()
                    .onTapGesture {
                        everything.playerTap(position: pos)
                    }
                    .frame(width: 200, height: 150)
    }
}
struct POPUP: View{
    @EnvironmentObject var everything: Everything
    var body: some View{
        ZStack{
            Rectangle()
                .opacity(0.8)
                .foregroundColor(.gray)
                
            }
            VStack{
                Text("Select Your Color Theme")
                ForEach (everything.themes, id: \.self){ theme in
                    ZStack{
                        Button(action: {
                            everything.theme = theme.themeName
                        }, label: {
                            Text(theme.themeName)
                                .frame(width: 200, height: 50)
                                .background(.blue)
                        })
                        if everything.theme == theme.themeName{
                            Rectangle()
                                .stroke(lineWidth: 10.0)
                                .frame(width: 200, height: 50)
                        }
                    }
                }
                Text("Select Your Piece Type")
                ForEach (everything.types, id: \.self){ theme in
                    ZStack{
                        Button(action: {
                            everything.type = theme.typeName
                        }, label: {
                            Text(theme.typeName)
                                .frame(width: 200, height: 50)
                                .background(.blue)
                        })
                        if everything.type == theme.typeName{
                            Rectangle()
                                .stroke(lineWidth: 10.0)
                                .frame(width: 200, height: 50)
                        }
                    }
                }
                Button(action: {
                    everything.popUp = false
                }, label: {
                    Text("Button")
                })
            }
        }
    }

