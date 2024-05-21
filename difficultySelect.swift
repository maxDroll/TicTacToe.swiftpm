//
//  difficultySelect.swift
//  TicTacToe
//
//  Created by Georgie Naegele on 4/17/24.
//

import Foundation

import SwiftUI


struct difficultySelect: View {
    
    
    
    var body: some View {
        
        NavigationStack{
            
        VStack {
            Text("Choose Your Difficulty!")
                .font(.system(size: 90))
      
           

            
                HStack{
                    
                    
                    NavigationLink {
                        EasyView()
                    } label: {
                        RoundedRectangle(cornerSize: CGSize(width: 50, height: 50))
                            .frame(width:300, height: 175)
                            .foregroundColor(.green)
                            .overlay(
                                Text("Easy")                                .foregroundColor(.black)
                                    .font(.system(size: 75))
                                    
                            )
                            .padding()
                            
                    }

                    NavigationLink {
                        MediumView()
                    } label: {
                        RoundedRectangle(cornerSize: CGSize(width: 50, height: 50))
                            .frame(width:300, height: 175)
                            .foregroundColor(.yellow)
                            .overlay(
                                Text("Medium")                                .foregroundColor(.black)
                                    .font(.system(size: 75))
                                 
                            )
                            .padding()
                    }
                    
                    
                    
                    NavigationLink {
                        HardView()
                    } label: {
                        RoundedRectangle(cornerSize: CGSize(width: 50, height: 50))
                            .frame(width:300, height: 175)
                            .foregroundColor(.red)
                            .overlay(
                                Text("Hard")                                .foregroundColor(.black)
                                    .font(.system(size: 75))
                                  
                            )
                            .padding()
                    }
                    
                   
                    
                }
            }
        }
        .preferredColorScheme(.light)
    }
}
