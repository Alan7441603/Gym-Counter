//
//  StopWatch.swift
//  Gym Counter
//
//  Created by Alan Rivera on 12/6/23.
//

import SwiftUI

struct StopWatch: View {
    @State var time = 0
    var body: some View {
        ZStack {
            Color.red.opacity(1.0).ignoresSafeArea()
            VStack {
                Text("Stopwatch")
                    .font(Font.custom("Marker Felt", size: 50))
                Spacer()
            }
        }
    }
}
struct StopWatch_Previews: PreviewProvider {
    static var previews: some View {
        StopWatch()
    }
}
