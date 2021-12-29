//
//  ContentView.swift
//  Heart
//
//  Created by 邱宏宇 on 7/29/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var colorChange = false
    @State private var sizechange = false
    
    var body: some View {
        
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            Image(systemName: "heart.fill")
                .font(.system(size: 200))
                .foregroundColor(colorChange ? Color("LightRed") : Color("Red"))
                .scaleEffect(sizechange ? 1.5 : 1)
                .animation(.default)
                .onTapGesture {
                    self.colorChange.toggle()
                }
                .onLongPressGesture {
                    self.sizechange.toggle()
                }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
