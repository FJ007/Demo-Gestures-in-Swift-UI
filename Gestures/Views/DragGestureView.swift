//
//  DragGestureView.swift
//  Gestures
//
//  Created by Javier Fernández on 01/07/2020.
//  Copyright © 2020 Silversun Studio. All rights reserved.
//

import SwiftUI

struct DragGestureView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                DraggableView(){
                    Image(systemName: "tornado")
                        .font(.system(size: 80))
                        .foregroundColor(.gray)
                }
            }
            .navigationBarTitle("DragGesture")
        }
    }
}

struct DragGestureView_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureView()
    }
}
