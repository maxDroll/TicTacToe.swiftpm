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
            
            HStack{
                
                Image(systemName: everything.image1)
                    .resizable()
                    .foregroundColor(everything.imageColor1)
                    .onTapGesture {
                        everything.image1 = "xmark"
                        everything.imageColor1 = Color.black
                    }
                
                Image(systemName: everything.image2)
                    .resizable()
                    .foregroundColor(everything.imageColor2)
                    .onTapGesture {
                        everything.image2 = "xmark"
                        everything.imageColor2 = Color.black
                        
                Image(systemName: everything.image3)
                            .resizable()
                            .foregroundColor(everything.imageColor3)
                            .onTapGesture {
                                everything.image3 = "xmark"
                                everything.imageColor3 = Color.black
                            }
                       
                    }
            }
            ZStack{
                
                VStack{
                    Text("Wins: \(everything.wins)")
                    Text("Loses: \(everything.losses)")
                    Text("Ties: \(everything.ties)")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title)
//                HStack(spacing: 170){
//                    RoundedRectangle(cornerRadius: 10)
//                        .frame(width: 10, height: 500)
//                    RoundedRectangle(cornerRadius: 10)
//                        .frame(width: 10, height: 500)
//                }
//                VStack(spacing: 170){
//                    RoundedRectangle(cornerRadius: 10)
//                        .frame(width: 500, height: 10)
//                    RoundedRectangle(cornerRadius: 10)
//                        .frame(width: 500, height: 10)
//                }
                
            }
            
            
            
                }
            }
        }
    

