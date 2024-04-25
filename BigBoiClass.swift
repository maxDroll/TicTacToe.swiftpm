//
//  BigBoiClass.swift
//  TicTacToe
//
//  Created by Max Droll on 4/19/24.
//

import Foundation

import SwiftUI


class Everything: ObservableObject{
    @Published var Player: [Int] = []
    @Published var Computer: [Int] = []
    @Published var Available = [1,2,3,4,5,6,7,8,9]
    @Published var wins: Int = 0
    @Published var ties: Int = 0
    @Published var losses: Int = 0
    @Published var gameEnded = false
    @Published var difficulty = ""
    @Published var image1 = "square.fill"
    @Published var image2 = "square.fill"
    @Published var image3 = "square.fill"
    @Published var image4 = "square.fill"
    @Published var image5 = "square.fill"
    @Published var image6 = "square.fill"
    @Published var image7 = "square.fill"
    @Published var image8 = "square.fill"
    @Published var image9 = "square.fill"
    @Published var imageColor1 = Color.white
    @Published var imageColor2 = Color.white
    @Published var imageColor3 = Color.white
    @Published var imageColor4 = Color.white
    @Published var imageColor5 = Color.white
    @Published var imageColor6 = Color.white
    @Published var imageColor7 = Color.white
    @Published var imageColor8 = Color.white
    @Published var imageColor9 = Color.white
    func CompSelect(){
        var tempInt: Int
        tempInt = Available.randomElement() ?? 0
        win()
        if gameEnded == false{
            if Available.count == 8{
                if difficulty == "hard"{
                    ComputerFirstHard()
                }
                if difficulty == "medium"{
                    Computer.append(tempInt)
                    Available.remove(at: Available.firstIndex(of: tempInt)!)
                }
                if difficulty == "easy"{
                    Computer.append(tempInt)
                    Available.remove(at: Available.firstIndex(of: tempInt)!)
                }
            }
            else{
                if difficulty != "easy"{
                    if Available.contains(2){
                        if (Computer.contains(1) && Computer.contains(3))||(Computer.contains(5) && Computer.contains(8)){
                            Computer.append(2)
                            Available.remove(at: Available.firstIndex(of: 2)!)
                            image2 = "circle"
                        }
                        
                        else if Available.contains(3){
                            if (Computer.contains(1) && Computer.contains(2))||(Computer.contains(6) && Computer.contains(9)){
                                Computer.append(2)
                                Available.remove(at: Available.firstIndex(of: 3)!)
                                image3 = "circle"
                            }
                            
                            else if Available.contains(4){
                                if (Computer.contains(1) && Computer.contains(7))||(Computer.contains(5) && Computer.contains(6)){
                                    Computer.append(4)
                                    Available.remove(at: Available.firstIndex(of: 4)!)
                                    image4 = "circle"
                                }
                                
                                else if Available.contains(1){
                                    if (Computer.contains(2) && Computer.contains(3))||(Computer.contains(4) && Computer.contains(7)){
                                        Computer.append(1)
                                        Available.remove(at: Available.firstIndex(of: 1)!)
                                        image1 = "circle"
                                    }
                                    
                                    else if Available.contains(6){
                                        if (Computer.contains(5) && Computer.contains(4))||(Computer.contains(3) && Computer.contains(9)){
                                            Computer.append(6)
                                            Available.remove(at: Available.firstIndex(of: 6)!)
                                            image6 = "circle"
                                        }
                                        
                                        else if Available.contains(7){
                                            if (Computer.contains(1) && Computer.contains(4))||(Computer.contains(8) && Computer.contains(9)){
                                                Computer.append(7)
                                                Available.remove(at: Available.firstIndex(of: 7)!)
                                                image7 = "circle"
                                            }
                                            
                                            else if Available.contains(8){
                                                if (Computer.contains(2) && Computer.contains(5))||(Computer.contains(9) && Computer.contains(7)){
                                                    Computer.append(8)
                                                    Available.remove(at: Available.firstIndex(of: 8)!)
                                                    image8 = "circle"
                                                }
                                                
                                                else if Available.contains(9){
                                                    if (Computer.contains(7) && Computer.contains(8))||(Computer.contains(6) && Computer.contains(3)){
                                                        Computer.append(9)
                                                        Available.remove(at: Available.firstIndex(of: 9)!)
                                                        image9 = "circle"
                                                    }
                                                    
                                                    else if Available.contains(5){
                                                        if (Computer.contains(1) && Computer.contains(9)) || (Computer.contains(4) && Computer.contains(6)) || (Computer.contains(3) && Computer.contains(7))||(Computer.contains(2) && Computer.contains(8)){
                                                            Computer.append(5)
                                                            Available.remove(at: Available.firstIndex(of: 5)!)
                                                            image5 = "circle"
                                                        }
                                                    }}}}}}}}}
                    if Available.contains(2){
                        if (Player.contains(1) && Player.contains(3))||(Player.contains(5) && Player.contains(8)){
                            Computer.append(2)
                            Available.remove(at: Available.firstIndex(of: 2)!)
                            image2 = "circle"
                        }
                        
                        else if Available.contains(3){
                            if (Player.contains(1) && Player.contains(2))||(Player.contains(6) && Player.contains(9)){
                                Computer.append(2)
                                Available.remove(at: Available.firstIndex(of: 3)!)
                                image3 = "circle"
                            }
                            
                            else if Available.contains(4){
                                if (Player.contains(1) && Player.contains(7))||(Player.contains(5) && Player.contains(6)){
                                    Computer.append(4)
                                    Available.remove(at: Available.firstIndex(of: 4)!)
                                    image4 = "circle"
                                }
                                
                                else if Available.contains(1){
                                    if (Player.contains(2) && Player.contains(3))||(Player.contains(4) && Player.contains(7)){
                                        Computer.append(1)
                                        Available.remove(at: Available.firstIndex(of: 1)!)
                                        image1 = "circle"
                                    }
                                    
                                    else if Available.contains(6){
                                        if (Player.contains(5) && Player.contains(4))||(Player.contains(3) && Player.contains(9)){
                                            Computer.append(6)
                                            Available.remove(at: Available.firstIndex(of: 6)!)
                                            image6 = "circle"
                                        }
                                        
                                        else if Available.contains(7){
                                            if (Player.contains(1) && Player.contains(4))||(Player.contains(8) && Player.contains(9)){
                                                Computer.append(7)
                                                Available.remove(at: Available.firstIndex(of: 7)!)
                                                image7 = "circle"
                                            }
                                            
                                            else if Available.contains(8){
                                                if (Player.contains(2) && Player.contains(5))||(Player.contains(9) && Player.contains(7)){
                                                    Computer.append(8)
                                                    Available.remove(at: Available.firstIndex(of: 8)!)
                                                    image8 = "circle"
                                                }
                                                
                                                else if Available.contains(9){
                                                    if (Player.contains(7) && Player.contains(8))||(Player.contains(6) && Player.contains(3)){
                                                        Computer.append(9)
                                                        Available.remove(at: Available.firstIndex(of: 9)!)
                                                        image9 = "circle"
                                                    }
                                                    
                                                    else if Available.contains(5){
                                                        if (Player.contains(1) && Player.contains(9)) || (Player.contains(4) && Player.contains(6)) || (Player.contains(3) && Player.contains(7))||(Player.contains(2) && Player.contains(8)){
                                                            Computer.append(5)
                                                            Available.remove(at: Available.firstIndex(of: 5)!)
                                                            image5 = "circle"
                                                        }
                                                        else {
                                                            Computer.append(tempInt)
                                                            Available.remove(at: Available.firstIndex(of: tempInt)!)
                                                            
                                                        }
                                                    }}}}}}}}}
                }}
            if difficulty == "easy"{
                Computer.append(tempInt)
                Available.remove(at: Available.firstIndex(of: tempInt)!)
            }
            win()
        }  
    }
    func win(){
            if (Player.contains(2) && Player.contains(8) && Player.contains(5)) || (Player.contains(1) && Player.contains(9) && Player.contains(5)) || (Player.contains(3) && Player.contains(7) && Player.contains(5)) || (Player.contains(4) && Player.contains(6) && Player.contains(5)) || (Player.contains(1) && Player.contains(2) && Player.contains(3)) || (Player.contains(7) && Player.contains(8) && Player.contains(9)) || (Player.contains(1) && Player.contains(4) && Player.contains(7)) || (Player.contains(3) && Player.contains(6) && Player.contains(9)){
                gameEnded = true
                wins += 1
            }
            if (Computer.contains(2) && Computer.contains(8) && Computer.contains(5)) || (Computer.contains(1) && Computer.contains(9) && Computer.contains(5)) || (Computer.contains(3) && Computer.contains(7) && Computer.contains(5)) || (Computer.contains(4) && Computer.contains(6) && Computer.contains(5)) || (Computer.contains(1) && Computer.contains(2) && Computer.contains(3)) || (Computer.contains(7) && Computer.contains(8) && Computer.contains(9)) || (Computer.contains(1) && Computer.contains(4) && Computer.contains(7)) || (Computer.contains(3) && Computer.contains(6) && Computer.contains(9)){
                gameEnded = true
                losses += 1
            }
        if Available.isEmpty{
            gameEnded = true
            ties += 1
        }
    }
    func playerTap(position:Int,image:String){
        var Image = image
        if Available.contains(position){
            Player.append(position)
            Available.remove(at: Available.firstIndex(of: position)!)
            CompSelect()
        }
    }
    func ComputerFirstHard(){
                let randomInt = Int.random(in: 1...3)
                    if Player.contains(5){
                        switch randomInt{
                            case 1:
                            Computer.append(1)
                            Available.remove(at: Available.firstIndex(of: 1)!)
                        case 2:
                            Computer.append(3)
                            Available.remove(at: Available.firstIndex(of: 3)!)
                        case 3:
                            Computer.append(7)
                            Available.remove(at: Available.firstIndex(of: 7)!)
                        default:
                            Computer.append(9)
                            Available.remove(at: Available.firstIndex(of: 9)!)
                        }
                    }
                    else{
                        Computer.append(5)
                        Available.remove(at: Available.firstIndex(of: 5)!)
                    }
            }
}
