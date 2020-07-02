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
    
    @State private var currentAmount: CGFloat = 0
    @State private var finalAmount: CGFloat = 1
    
    @GestureState private var magnifyBy = CGFloat(1.0)
    
    var content: () -> T
    
    var body: some View {
        content()
            .scaleEffect(currentAmount + finalAmount)
            .gesture(
                MagnificationGesture()
                    .onChanged { amount in
                        self.currentAmount = amount - 1
                    }
                    .onEnded { amount in
                        self.finalAmount += self.currentAmount
                        self.currentAmount = 0
                    }
            )
    }
}

struct MagnificationGenericView_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGenericView() {
            Image("picture_lion")
        }
    }
}
