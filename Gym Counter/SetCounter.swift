//
//  SetCounter.swift
//  Gym Counter
//
//  Created by Alan Rivera on 12/6/23.
//

import SwiftUI
import AVKit

struct SetCounter: View {
    @State var Sets = 0
    @State var Reps = 0
    var body: some View {
        ZStack {
            Color.red.opacity(1.0).ignoresSafeArea()
            VStack {
                Text("Sets: \(Sets)")
                    .font(Font.custom("Marker Felt", size: 50))
                HStack{
                    
                    Button(action: {
                        Sets += 1
                    }) {
                        Text("+1")
                            .frame(width: 90, height: 50)
                            .font(Font.custom("Marker Felt", size: 38))
                            .padding()
                            .clipShape(RoundedRectangle(cornerRadius:50))
                            .background(.gray).opacity(1.0)
                            .cornerRadius(10)
                            .foregroundColor(.black)
                    }
                    
                    
                    Button(action: {
                        Sets -= 1
                    }) {
                        Text("-1")
                            .frame(width: 90, height: 50)
                            .font(Font.custom("Marker Felt", size: 38))
                            .padding()
                            .clipShape(RoundedRectangle(cornerRadius:50))
                            .background(.gray).opacity(1.0)
                            .cornerRadius(10)
                            .foregroundColor(.black)
                        
                        
                    }
                }
                Button("Reset Sets") {
                    Sets = 0
                }
                .frame(width: 220, height: 50)
                .font(Font.custom("Marker Felt", size: 38))
                .padding()
                .clipShape(RoundedRectangle(cornerRadius:50))
                .background(.gray).opacity(1.0)
                .cornerRadius(10)
                .foregroundColor(.black)
                Spacer()
                Text("Reps: \(Reps)")
                    .font(Font.custom("Marker Felt", size: 50))
                Spacer()
                
                HStack {
                    Button(action: {
                        Reps += 1
                    }) {
                        Text("+1")
                            .frame(width: 90, height: 50)
                            .font(Font.custom("Marker Felt", size: 38))
                            .padding()
                            .clipShape(RoundedRectangle(cornerRadius:50))
                            .background(.gray).opacity(1.0)
                            .cornerRadius(10)
                            .foregroundColor(.black)
                    }
                    
                    
                    Button(action: {
                        Reps -= 1
                    }) {
                        Text("-1")
                            .frame(width: 90, height: 50)
                            .font(Font.custom("Marker Felt", size: 38))
                            .padding()
                            .clipShape(RoundedRectangle(cornerRadius:50))
                            .background(.gray).opacity(1.0)
                            .cornerRadius(10)
                            .foregroundColor(.black)
                    }
                }
                Button("Reset Reps") {
                    Reps = 0
                }
                .frame(width: 220, height: 50)
                .font(Font.custom("Marker Felt", size: 38))
                .padding()
                .clipShape(RoundedRectangle(cornerRadius:50))
                .background(.gray).opacity(1.0)
                .cornerRadius(10)
                .foregroundColor(.black)
                Spacer()

                
                Button("Workout Done") {
                    NavigationLink(destination : ContentView())
                    SoundManager.instance.playSound()
                    Reps = 0
                    Sets = 0
                    
                }
                .frame(width: 220, height: 50)
                .font(Font.custom("Marker Felt", size: 38))
                .padding()
                .clipShape(RoundedRectangle(cornerRadius:50))
                .background(.gray).opacity(1.0)
                .cornerRadius(10)
                .foregroundColor(.black)
            }
        }
    }
}
            
    

    struct SetCounter_Previews: PreviewProvider {
        static var previews: some View {
            SetCounter()
        }
    }

class SoundManager {
    static let instance = SoundManager()
    var player: AVAudioPlayer?
    func playSound() {
        guard let url = Bundle.main.url(forResource: "weights", withExtension: ".mp3") else {return}
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("Error playing sound.\(error.localizedDescription)")
            
        }
    }
}

