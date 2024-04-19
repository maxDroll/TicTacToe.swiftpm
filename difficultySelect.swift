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
        VStack {
            Text("Choose Your Difficulty!")
            HStack{
                
                RoundedRectangle(cornerSize: CGSize(width: 50, height: 50))
                            .frame(width:400, height: 200)
                            .foregroundColor(.green)
                            .overlay(
                                Text("Easy")
                                    .foregroundColor(.black)
                                    .font(.system(size: 75))
                            )
                            .padding()
                  
               
                    
                
                
                
                    }
        }
    }
}
