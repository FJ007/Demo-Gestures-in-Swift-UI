//
//  LongPressGestureView.swift
//  Gestures
//
//  Created by Javier Fernández on 01/07/2020.
//  Copyright © 2020 Silversun Studio. All rights reserved.
//

// https://developer.apple.com/documentation/swiftui/longpressgesture

import SwiftUI

struct LongPressGestureView: View {
    
    @GestureState private var isLongGesturePress = false
    
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "sun.min")
                    .font(.system(size: 150))
                    .foregroundColor(.yellow)
                    .scaleEffect(isLongGesturePress ? 2.0 : 1.0)
                    .animation(.easeIn)
                    .gesture(
                        LongPressGesture(minimumDuration: 1.0)
                            .updating($isLongGesturePress) { (value, state, transaction) in
                                // value -> if is true, gesture "long press" OK
                                // state (inout) -> current state of the gesture
                                // transaction -> the context of the current state-processing update.
                                state = value
                            }
                    )
            }
            .navigationBarTitle("LongPressGesture")
        }
    }
}

struct LongPressGestureView_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGestureView()
    }
}
