//
//  ContentView.swift
//  ColorAppUI
//
//  Created by Artem Bazhanov on 05.06.2021.
//

import SwiftUI



struct ContentView: View {
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)

    @State private var isEditing = false
    
    @State private var color = Color.red
    
    var body: some View {
        ZStack {
            Color(.blue)
                .ignoresSafeArea()
            VStack {
                
                RectangleColorView(redColor: redValue, greenColor: greenValue, blueColor: blueValue)
                    .padding()
            
                VStack {
                    ChangeableSliderView(value: $redValue, color: Color.red)
                    ChangeableSliderView(value: $greenValue, color: Color.green)
                    ChangeableSliderView(value: $blueValue, color: Color.blue)
                }
                .padding(.leading)
                .padding(.trailing)
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func changeColor(redColor: Double, greenColor: Double, blueColor: Double) -> Color {
    let color = Color(red: redColor, green: greenColor, blue: blueColor)
    print(color)
    return color
}
