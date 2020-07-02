//
//  ContentView.swift
//  Gestures
//
//  Created by Javier Fernández on 23/06/2020.
//  Copyright © 2020 Silversun Studio. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: TapGestureView()){
                    Text("Tap Gesture")
                        .font(.body)
                        .bold()
                        .multilineTextAlignment(.leading)
                        .padding()
                    Spacer()
                }
                NavigationLink(destination: LongPressGestureView()){
                    Text("Long Press Gesture")
                        .font(.body)
                        .bold()
                        .multilineTextAlignment(.leading)
                        .padding()
                    Spacer()
                }
                NavigationLink(destination: DragGestureView()){
                    Text("Drag Gesture")
                        .font(.body)
                        .bold()
                        .padding()
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                NavigationLink(destination: MagnificationGestureView()){
                    Text("Magnification Gesture")
                        .font(.body)
                        .bold()
                        .padding()
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                NavigationLink(destination: RotationGestureView()){
                    Text("Rotation Gesture")
                        .font(.body)
                        .bold()
                        .padding()
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                Spacer()
            }
        .navigationBarTitle("Demo Gestures")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
