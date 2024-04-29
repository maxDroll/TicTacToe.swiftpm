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
    @Published var difficulty = "hard"
    @Published var image1 = "square.fill"
    @Published var image2 = "square.fill"
    @Published var image3 = "square.fill"
    @Published var image4 = "square.fill"
    @Published var image5 = "square.fill"
    @Published var image6 = "square.fill"
    @Published var image7 = "square.fill"
    @Published var image8 = "square.fill"
    @Published var image9 = "square.fill"
    @Published var imageColor1 = Color.green
    @Published var imageColor2 = Color.green
    @Published var imageColor3 = Color.green
    @Published var imageColor4 = Color.green
    @Published var imageColor5 = Color.green
    @Published var imageColor6 = Color.green
    @Published var imageColor7 = Color.green
    @Published var imageColor8 = Color.green
    @Published var imageColor9 = Color.green
    func CompSelect(){
        var tempInt: Int
        tempInt = Available.randomElement() ?? 0
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
                print("goes to big block)")
                if difficulty != "easy"{
                    if ((Computer.contains(2) && Computer.contains(3))||(Computer.contains(4) && Computer.contains(7))||(Computer.contains(5) && Computer.contains(9))) && Available.contains(1){
                        Computer.append(1)
                        Available.remove(at: Available.firstIndex(of: 1)!)
                    }
                    else if ((Computer.contains(1) && Computer.contains(3))||(Computer.contains(5) && Computer.contains(8))) && Available.contains(2){
                        Computer.append(2)
                        Available.remove(at: Available.firstIndex(of: 2)!)
                    }
                    else if ((Computer.contains(1) && Computer.contains(2))||(Computer.contains(6) && Computer.contains(9))||(Computer.contains(5) && Computer.contains(7))) && Available.contains(3){
                        Computer.append(3)
                        Available.remove(at: Available.firstIndex(of: 3)!)
                    }
                    else if((Computer.contains(1) && Computer.contains(7))||(Computer.contains(5) && Computer.contains(6))) && Available.contains(4){
                        Computer.append(4)
                        Available.remove(at: Available.firstIndex(of: 4)!)
                    }
                    else if ((Computer.contains(1) && Computer.contains(9)) || (Computer.contains(4) && Computer.contains(6)) || (Computer.contains(3) && Computer.contains(7))||(Computer.contains(2) && Computer.contains(8))) && Available.contains(5){
                        Computer.append(5)
                        Available.remove(at: Available.firstIndex(of: 5)!)
                    }
                    else if ((Computer.contains(5) && Computer.contains(4))||(Computer.contains(3) && Computer.contains(9))) && Available.contains(6){
                        Computer.append(6)
                        Available.remove(at: Available.firstIndex(of: 6)!)
                    }
                    else if ((Computer.contains(1) && Computer.contains(4))||(Computer.contains(8) && Computer.contains(9))||(Computer.contains(5) && Computer.contains(3))) && Available.contains(7){
                        Computer.append(7)
                        Available.remove(at: Available.firstIndex(of: 7)!)
                    }
                    else if ((Computer.contains(2) && Computer.contains(5))||(Computer.contains(9) && Computer.contains(7))) && Available.contains(8){
                        Computer.append(8)
                        Available.remove(at: Available.firstIndex(of: 8)!)
                    }
                    else if ((Computer.contains(7) && Computer.contains(8))||(Computer.contains(6) && Computer.contains(3))||(Computer.contains(5) && Computer.contains(1))) && Available.contains(9){
                        Computer.append(9)
                        Available.remove(at: Available.firstIndex(of: 9)!)
                    }
                    else if ((Player.contains(2) && Player.contains(3))||(Player.contains(4) && Player.contains(7))||(Player.contains(5) && Player.contains(9))) && Available.contains(1){
                        Computer.append(1)
                        Available.remove(at: Available.firstIndex(of: 1)!)
                    }
                    else if ((Player.contains(1) && Player.contains(3))||(Player.contains(5) && Player.contains(8))) && Available.contains(2){
                        Computer.append(2)
                        Available.remove(at: Available.firstIndex(of: 2)!)
                    }
                    else if ((Player.contains(1) && Player.contains(2))||(Player.contains(6) && Player.contains(9))||(Player.contains(5) && Player.contains(7))) && Available.contains(3){
                        Computer.append(3)
                        Available.remove(at: Available.firstIndex(of: 3)!)
                    }
                    else if((Player.contains(1) && Player.contains(7))||(Player.contains(5) && Player.contains(6))) && Available.contains(4){
                        Computer.append(4)
                        Available.remove(at: Available.firstIndex(of: 4)!)
                    }
                    else if ((Player.contains(1) && Player.contains(9)) || (Player.contains(4) && Player.contains(6)) || (Player.contains(3) && Player.contains(7))||(Player.contains(2) && Player.contains(8))) && Available.contains(5){
                        Computer.append(5)
                        Available.remove(at: Available.firstIndex(of: 5)!)
                    }
                    else if ((Player.contains(5) && Player.contains(4))||(Player.contains(3) && Player.contains(9))) && Available.contains(6){
                        Computer.append(6)
                        Available.remove(at: Available.firstIndex(of: 6)!)
                    }
                    else if ((Player.contains(1) && Player.contains(4))||(Player.contains(8) && Player.contains(9))||(Player.contains(5) && Player.contains(3))) && Available.contains(7){
                        Computer.append(7)
                        Available.remove(at: Available.firstIndex(of: 7)!)
                    }
                    else if ((Player.contains(2) && Player.contains(5))||(Player.contains(9) && Player.contains(7))) && Available.contains(8){
                        Computer.append(8)
                        Available.remove(at: Available.firstIndex(of: 8)!)
                    }
                    else if ((Player.contains(7) && Player.contains(8))||(Player.contains(6) && Player.contains(3))||(Player.contains(5) && Player.contains(1))) && Available.contains(9){
                        Computer.append(9)
                        Available.remove(at: Available.firstIndex(of: 9)!)
                    }
                    else {
                        print("Got to Random")
                        Computer.append(tempInt)
                        Available.remove(at: Available.firstIndex(of: tempInt)!)
                        
                    }
                    
                }
                if difficulty == "easy"{
                    Computer.append(tempInt)
                    Available.remove(at: Available.firstIndex(of: tempInt)!)
                }
            }
    }
    func reset(){
        if gameEnded {
            
            imageColor1 = Color.green
            imageColor2 = Color.green
            imageColor3 = Color.green
            imageColor4 = Color.green
            imageColor5 = Color.green
            imageColor6 = Color.green
            imageColor7 = Color.green
            imageColor8 = Color.green
            imageColor9 = Color.green
            
            image1 = "square.fill"
            image2 = "square.fill"
            image3 = "square.fill"
            image4 = "square.fill"
            image5 = "square.fill"
            image6 = "square.fill"
            image7 = "square.fill"
            image8 = "square.fill"
            image9 = "square.fill"
            
            Player = []
            Computer = []
            Available = [1,2,3,4,5,6,7,8,9]
            
            gameEnded = false
        }
    }
    func win(){
        if gameEnded == false{
            if (Player.contains(2) && Player.contains(8) && Player.contains(5)) || (Player.contains(1) && Player.contains(9) && Player.contains(5)) || (Player.contains(3) && Player.contains(7) && Player.contains(5)) || (Player.contains(4) && Player.contains(6) && Player.contains(5)) || (Player.contains(1) && Player.contains(2) && Player.contains(3)) || (Player.contains(7) && Player.contains(8) && Player.contains(9)) || (Player.contains(1) && Player.contains(4) && Player.contains(7)) || (Player.contains(3) && Player.contains(6) && Player.contains(9)){
                gameEnded = true
                wins += 1
                reset()
            }
            if (Computer.contains(2) && Computer.contains(8) && Computer.contains(5)) || (Computer.contains(1) && Computer.contains(9) && Computer.contains(5)) || (Computer.contains(3) && Computer.contains(7) && Computer.contains(5)) || (Computer.contains(4) && Computer.contains(6) && Computer.contains(5)) || (Computer.contains(1) && Computer.contains(2) && Computer.contains(3)) || (Computer.contains(7) && Computer.contains(8) && Computer.contains(9)) || (Computer.contains(1) && Computer.contains(4) && Computer.contains(7)) || (Computer.contains(3) && Computer.contains(6) && Computer.contains(9)){
                gameEnded = true
                losses += 1
                reset()
            }
            if Available.isEmpty{
                gameEnded = true
                ties += 1
                reset()
            }
        }
    }
    func playerTap(position:Int){
        if gameEnded == false{
            if Available.contains(position){
                Player.append(position)
                Available.remove(at: Available.firstIndex(of: position)!)
                win()
                CompSelect()
                win()
                if Computer.contains(1){
                    image1 = "circle"
                    imageColor1 = Color.red
                }
                if Computer.contains(2){
                    image2 = "circle"
                    imageColor2 = Color.red
                }
                if Computer.contains(3){
                    image3 = "circle"
                    imageColor3 = Color.red
                }
                if Computer.contains(4){
                    image4 = "circle"
                    imageColor4 = Color.red
                }
                if Computer.contains(5){
                    image5 = "circle"
                    imageColor5 = Color.red
                }
                if Computer.contains(6){
                    image6 = "circle"
                    imageColor6 = Color.red
                }
                if Computer.contains(7){
                    image7 = "circle"
                    imageColor7 = Color.red
                }
                if Computer.contains(8){
                    image8 = "circle"
                    imageColor8 = Color.red
                }
                if Computer.contains(9){
                    image9 = "circle"
                    imageColor9 = Color.red
                }
                if Player.contains(1){
                    image1 = "xmark"
                    imageColor1 = Color.blue
                }
                if Player.contains(2){
                    image2 = "xmark"
                    imageColor2 = Color.blue
                }
                if Player.contains(3){
                    image3 = "xmark"
                    imageColor3 = Color.blue
                }
                if Player.contains(4){
                    image4 = "xmark"
                    imageColor4 = Color.blue
                }
                if Player.contains(5){
                    image5 = "xmark"
                    imageColor5 = Color.blue
                }
                if Player.contains(6){
                    image6 = "xmark"
                    imageColor6 = Color.blue
                }
                if Player.contains(7){
                    image7 = "xmark"
                    imageColor7 = Color.blue
                }
                if Player.contains(8){
                    image8 = "xmark"
                    imageColor8 = Color.blue
                }
                if Player.contains(9){
                    image9 = "xmark"
                    imageColor9 = Color.blue
                }
            }
            print(Computer)
                }
                if Player.contains(5){
                    image5 = "xmark"
                    imageColor5 = Color.blue

                }
                if Player.contains(6){
                    image6 = "xmark"
                    imageColor6 = Color.blue

                }
                if Player.contains(7){
                    image7 = "xmark"
                    imageColor7 = Color.blue

                }
                if Player.contains(8){
                    image8 = "xmark"
                    imageColor8 = Color.blue

                }
                if Player.contains(9){
                    image9 = "xmark"
                    imageColor9 = Color.blue

                
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
