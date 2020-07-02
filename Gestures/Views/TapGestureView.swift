//
//  TapGestureView.swift
//  Gestures
//
//  Created by Javier Fernández on 01/07/2020.
//  Copyright © 2020 Silversun Studio. All rights reserved.
//

// https://developer.apple.com/documentation/swiftui/tapgesture

import SwiftUI

struct TapGestureView: View {
    
    @State private var isTapGesture = false
    
    var body: some View {
        NavigationView{
            VStack {
                Image(systemName: "cursor.rays")
                    .font(.system(size: 150))
                    .foregroundColor(.blue)
                    .scaleEffect(isTapGesture ? 2.0 : 1.0)
                    .animation(.default)
                    .gesture(
                        TapGesture()
                            .onEnded {
                                self.isTapGesture.toggle()
                            }
                    )
            }
            .navigationBarTitle("TapGesture")
        }
    }
}

struct TapGestureView_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureView()
    }
}
