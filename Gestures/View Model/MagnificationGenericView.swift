//
//  MagnificationGenericView.swift
//  Gestures
//
//  Created by Javier Fernández on 01/07/2020.
//  Copyright © 2020 Silversun Studio. All rights reserved.
//

/// https://developer.apple.com/documentation/swiftui/magnificationgesture

import SwiftUI

struct MagnificationGenericView<T>: View where T: View {
    
    @GestureState private var magnifyBy = CGFloat(1.0)
    
    var content: () -> T
    
    var body: some View {
        content()
            .scaleEffect(magnifyBy)
            .gesture(
                MagnificationGesture()
                    .updating($magnifyBy) { (currentState, gestureState, transaction) in
                        gestureState = currentState
                }
            )
    }
}

struct MagnificationGenericView_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGenericView() {
            Image("foto_leon")
        }
    }
}
