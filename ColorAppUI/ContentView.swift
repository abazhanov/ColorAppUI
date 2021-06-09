//
//  ContentView.swift
//  ColorAppUI
//
//  Created by Artem Bazhanov on 05.06.2021.
//

import SwiftUI



struct ContentView: View {
    @State private var redValue = Double.random(in: 0...255)
    @State private var redValueTxt = "0"
    
    @State private var greenValue = Double.random(in: 0...255)
    @State private var greenValueTxt = "0"
   
    @State private var blueValue = Double.random(in: 0...255)
    @State private var blueValueTxt = "0"
    
    @State private var isEditing = false
    
    @State private var color = Color.red
    
    //@State private var CurrentColor = changeColor(redColor: redValue, greenColor: greenValue, blueColor: blueValue)
    
    var body: some View {
        
        //redValueTxt = String(redValue)
        
        ZStack {
            Color(.blue)
                .ignoresSafeArea()
            VStack {
//                RectangleView(color: color)
//                    .padding()
                
                RectangleColorView(redColor: redValue, greenColor: greenValue, blueColor: blueValue)
                    .padding()
                
                //Красный слайдер
                
                ChangeableSliderView(value: $redValue, color: Color.red)
                
                
                
//                HStack {
//                    Text("\(lround(redValue))").foregroundColor(.white)
//                        .frame(width: 40, height: 30, alignment: .leading)
//                    Slider(value: $redValue, in: 0...255, step: 1,
//                           onEditingChanged: { editing in
//                            redValueTxt = String(redValue)
//
//                            color = Color(red: 1/redValue, green: 1/greenValue, blue: 1/blueValue)
//
//                            print("red: \(redValue), green: \(greenValue), blue: \(blueValue)")
//                            print("red: \(redValue/100), green: \(greenValue/1000), blue: \(blueValue/1000)")
//
//                            print("Color: ", color)
//                           })
//                        .accentColor(.red)
//
//                    TextField("0", text: $redValueTxt)
//                        .multilineTextAlignment(.trailing)
//                        .frame(width: 60, height: 30)
//                        .background(Color.white)
//                        .cornerRadius(5)
//                        .textFieldStyle(RoundedBorderTextFieldStyle())
//                }
//                .padding(.leading)
//                .padding(.trailing)
                
                // Зеленый слайдер
                HStack {
                    Text("\(lround(greenValue))").foregroundColor(.white)
                        .frame(width: 40, height: 30, alignment: .leading)
                    Slider(value: $greenValue, in: 0...255, step: 1,
                           onEditingChanged: { editing in
                            greenValueTxt = String(greenValue)
                            color = Color(red: redValue, green: greenValue, blue: blueValue)
                            print("Color: ", color)
                           })
                        .accentColor(.green)
                    
                    TextField("0", text: $greenValueTxt)
                        .multilineTextAlignment(.trailing)
                        .frame(width: 60, height: 30)
                        .background(Color.white)
                        .cornerRadius(5)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .padding(.leading)
                .padding(.trailing)
                
                // Синий слайдер
                HStack {
                    Text("\(lround(blueValue))").foregroundColor(.white)
                        .frame(width: 40, height: 30, alignment: .leading)
                    Slider(value: $blueValue, in: 0...255, step: 1,
                           onEditingChanged: { editing in
                            blueValueTxt = String(blueValue)
                            color = Color(red: redValue, green: greenValue, blue: blueValue)
                            print("Color: ", color)
                           })
                        .accentColor(.blue)
                    
                    TextField("0", text: $blueValueTxt)
                        .multilineTextAlignment(.trailing)
                        .frame(width: 60, height: 30)
                        .background(Color.white)
                        .cornerRadius(5)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
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
