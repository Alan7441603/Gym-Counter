//
//  ContentView.swift
//  Gym Counter
//
//  Created by Alan Rivera on 12/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.red.opacity(1.0).ignoresSafeArea()
                VStack {
                    Text("Max Reps")
                        .font(Font.custom("Marker Felt", size: 45))
                    Spacer()
                    HStack{
                        NavigationLink(destination : SetCounter()) {
                            Text("Set Counter!")
                                .font(Font.custom("Marker Felt", size: 50))
                                .frame(width: 300, height: 75)
                                .background(Color.gray)
                                .foregroundColor(Color.black)
                                .cornerRadius(15)
                        }
                    }
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
