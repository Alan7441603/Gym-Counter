//
//  ContentView.swift
//  Gym Counter
//
//  Created by Alan Rivera on 12/6/23.
//

import SwiftUI

struct ContentView: View {
    @State var Sets = 0
    @State var Reps = 0
    var body: some View {
        NavigationView {
           //Make Area Red
            ZStack {
                Color.red.opacity(1.0).ignoresSafeArea()
                //Name Of App
                VStack {
                    Text("Max Reps")
                        .font(Font.custom("Marker Felt", size: 45))
                    Spacer()
                    //Logo Image
                    Image("Barbell")
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
