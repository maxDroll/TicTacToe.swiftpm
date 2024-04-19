////
////  BigBoiClass.swift
////  TicTacToe
////
////  Created by Max Droll on 4/19/24.
////
//
//import Foundation
//
//class Everything: ObservableObject{
//    @Published var Player: [Int] = []
//    @Published var Computer: [Int] = []
//    @Published var Available = [1,2,3,4,5,6,7,8,9]
//    func CompSelect(){
//            var tempInt: Int
//            tempInt = Available.randomElement() ?? 0
//            if Available.contains(2){
//                if (Computer.contains(1) && Computer.contains(3))||(Computer.contains(5) && Computer.contains(8)){
//                    Computer.append(2)
//                    Available.remove(at: Available.firstIndex(of: 2)!)
//                }
//                
//                else if Available.contains(3){
//                    if (Computer.contains(1) && Computer.contains(2))||(Computer.contains(6) && Computer.contains(9)){
//                        Computer.append(2)
//                        Available.remove(at: Available.firstIndex(of: 3)!)
//                    }
//                    
//                    else if Available.contains(4){
//                        if (Computer.contains(1) && Computer.contains(7))||(Computer.contains(5) && Computer.contains(6)){
//                            Computer.append(4)
//                            Available.remove(at: Available.firstIndex(of: 4)!)
//                        }
//                        
//                        else if Available.contains(1){
//                            if (Computer.contains(2) && Computer.contains(3))||(Computer.contains(4) && Computer.contains(7)){
//                                Computer.append(1)
//                                Available.remove(at: Available.firstIndex(of: 1)!)
//                            }
//                            
//                            else if Available.contains(6){
//                                if (Computer.contains(5) && Computer.contains(4))||(Computer.contains(3) && Computer.contains(9)){
//                                    Computer.append(6)
//                                    Available.remove(at: Available.firstIndex(of: 6)!)
//                                }
//                                
//                                else if Available.contains(7){
//                                    if (Computer.contains(1) && Computer.contains(4))||(Computer.contains(8) && Computer.contains(9)){
//                                        Computer.append(7)
//                                        Available.remove(at: Available.firstIndex(of: 7)!)
//                                    }
//                                    
//                                    else if Available.contains(8){
//                                        if (Computer.contains(2) && Computer.contains(5))||(Computer.contains(9) && Computer.contains(7)){
//                                            Computer.append(8)
//                                            Available.remove(at: Available.firstIndex(of: 8)!)
//                                        }
//                                        
//                                        else if Available.contains(9){
//                                            if (Computer.contains(7) && Computer.contains(8))||(Computer.contains(6) && Computer.contains(3)){
//                                                Computer.append(9)
//                                                Available.remove(at: Available.firstIndex(of: 9)!)
//                                            }
//                                            
//                                            else if Available.contains(5){
//                                                if (Computer.contains(1) && Computer.contains(9)) || (Computer.contains(4) && Computer.contains(6)) || (Computer.contains(3) && Computer.contains(7))||(Computer.contains(2) && Computer.contains(8)){
//                                                    Computer.append(5)
//                                                    Available.remove(at: Available.firstIndex(of: 5)!)
//                                                }
//                                            }}}}}}}}}
//            if Available.contains(2){
//                if (Player.contains(1) && Player.contains(3))||(Player.contains(5) && Player.contains(8)){
//                    Computer.append(2)
//                    Available.remove(at: Available.firstIndex(of: 2)!)
//                }
//                
//                else if Available.contains(3){
//                    if (Player.contains(1) && Player.contains(2))||(Player.contains(6) && Player.contains(9)){
//                        Computer.append(2)
//                        Available.remove(at: Available.firstIndex(of: 3)!)
//                    }
//                    
//                    else if Available.contains(4){
//                        if (Player.contains(1) && Player.contains(7))||(Player.contains(5) && Player.contains(6)){
//                            Computer.append(4)
//                            Available.remove(at: Available.firstIndex(of: 4)!)
//                        }
//                        
//                        else if Available.contains(1){
//                            if (Player.contains(2) && Player.contains(3))||(Player.contains(4) && Player.contains(7)){
//                                Computer.append(1)
//                                Available.remove(at: Available.firstIndex(of: 1)!)
//                            }
//                            
//                            else if Available.contains(6){
//                                if (Player.contains(5) && Player.contains(4))||(Player.contains(3) && Player.contains(9)){
//                                    Computer.append(6)
//                                    Available.remove(at: Available.firstIndex(of: 6)!)
//                                }
//                                
//                                else if Available.contains(7){
//                                    if (Player.contains(1) && Player.contains(4))||(Player.contains(8) && Player.contains(9)){
//                                        Computer.append(7)
//                                        Available.remove(at: Available.firstIndex(of: 7)!)
//                                    }
//                                    
//                                    else if Available.contains(8){
//                                        if (Player.contains(2) && Player.contains(5))||(Player.contains(9) && Player.contains(7)){
//                                            Computer.append(8)
//                                            Available.remove(at: Available.firstIndex(of: 8)!)
//                                        }
//                                        
//                                        else if Available.contains(9){
//                                            if (Player.contains(7) && Player.contains(8))||(Player.contains(6) && Player.contains(3)){
//                                                Computer.append(9)
//                                                Available.remove(at: Available.firstIndex(of: 9)!)
//                                            }
//                                            
//                                            else if Available.contains(5){
//                                                if (Player.contains(1) && Player.contains(9)) || (Player.contains(4) && Player.contains(6)) || (Player.contains(3) && Player.contains(7))||(Player.contains(2) && Player.contains(8)){
//                                                    Computer.append(5)
//                                                    Available.remove(at: Available.firstIndex(of: 5)!)
//                                                }
//                                                else {
//                                                    Computer.append(tempInt)
//                                                    Available.remove(at: Available.firstIndex(of: tempInt)!)
//                                                }
//                                            }}}}}}}}
//            }}
//}
