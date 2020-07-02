//
//  DragGestureGenericView.swift
//  Gestures
//
//  Created by Javier Fernández on 01/07/2020.
//  Copyright © 2020 Silversun Studio. All rights reserved.
//

/// https://developer.apple.com/documentation/swiftui/draggesture

import SwiftUI

struct DraggableView<T>: View where T: View {
    
    @GestureState private var dragState = DragState.none
    @State private var position = CGSize.zero
    
    var content: () -> T
    
    var body: some View {
       content()
        .opacity(dragState.isPressing ? 0.5 : 1.0)
        .offset(x: position.width + dragState.translation.width,
                y: position.height + dragState.translation.height)
        .animation(.easeOut)
        .gesture(
            /// Ways to combine gestures: simultaneously, sequenced or exclusively
            LongPressGesture(minimumDuration: 0.5)
            .sequenced(before: DragGesture())
            .updating($dragState) { (value, state, transiction) in
                switch value{
                case .first(true):
                    print("It's Tap Gesture")
                    state = .pressing
                case .second(true, let drag):
                    state = .dragging(translation: drag?.translation ?? .zero)
                default:
                    break
                }
            }
            .onEnded{ (value) in
                guard case .second(true, let drag?) = value else {
                    return
                }
                /// FinalPositicion = InitialPosition + Translation (movement)
                self.position.width += drag.translation.width
                self.position.height += drag.translation.height
            }
        )
    }
}

struct DraggableView_Previews: PreviewProvider {
    static var previews: some View {
        DraggableView() {
            Image(systemName: "tornado")
                .font(.system(size: 60))
                .foregroundColor(.blue)
        }
    }
}
