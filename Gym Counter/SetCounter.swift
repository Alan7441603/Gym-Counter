//
//  SetCounter.swift
//  Gym Counter
//
//  Created by Alan Rivera on 12/6/23.
//

import SwiftUI

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
                    Text("Add 1")
                    
                }
                
                
                Button(action: {
                    Sets -= 1
                }) {
                    Text("Subtract 1")
                        .frame(width: 80, height: 50)
                }
            }
                        Spacer()
                    }
                }
            }
        }
    

    struct SetCounter_Previews: PreviewProvider {
        static var previews: some View {
            SetCounter()
        }
    }

