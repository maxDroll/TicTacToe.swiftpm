//
//  HardView.swift
//  TicTacToe
//
//  Created by Michael Peroulas   on 4/17/24.
//

import SwiftUI

struct HardView: View {
    var body: some View {
        VStack {
            Text("HardView")
            
            
            
            
            ZStack{
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
