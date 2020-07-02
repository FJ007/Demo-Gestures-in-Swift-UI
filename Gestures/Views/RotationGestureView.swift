//
//  RotationGestureView.swift
//  Gestures
//
//  Created by Javier Fernández on 02/07/2020.
//  Copyright © 2020 Silversun Studio. All rights reserved.
//

// https://developer.apple.com/documentation/swiftui/rotationgesture

import SwiftUI

struct RotationGestureView: View {
    
    @State private var angle = Angle(degrees: 0.0)
    
    var body: some View {
        NavigationView {
            Text("🍔")
                .font(.system(size: 150))
                .rotationEffect(angle)
                .gesture(
                    RotationGesture()
                        .onChanged { angle in
                            self.angle = angle
                        }
                )
            .navigationBarTitle("RotationGesture")
        }
    }
}

struct RotationGestureView_Previews: PreviewProvider {
    static var previews: some View {
        RotationGestureView()
    }
}
