//
//  MagnificationGestureView.swift
//  Gestures
//
//  Created by Javier Fernández on 01/07/2020.
//  Copyright © 2020 Silversun Studio. All rights reserved.
//

import SwiftUI

struct MagnificationGestureView: View {
    var body: some View {
        NavigationView{
            VStack {
                MagnificationGenericView(){
                    Image("foto_leon")
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width,
                               height: 200,
                               alignment: .center)
                }
            }
            .navigationBarTitle("MagnificationGesture")
        }
    }
}

struct MagnificationGestureView_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGestureView()
    }
}
