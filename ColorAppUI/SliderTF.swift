//
//  SliderTF.swift
//  ColorAppUI
//
//  Created by Artem Bazhanov on 09.06.2021.
//

import SwiftUI

struct SliderTF: View {
    @Binding var textValue: String
    @Binding var value: Double
    
    @State private var showAlert = false
    
    var body: some View {
        TextField("", text: $textValue, onCommit: changeTF)
            .multilineTextAlignment(.trailing)
            .frame(width: 60, height: 30)
            .background(Color.green)
            .cornerRadius(5)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Wrong Format"),
                    message: Text("Please enter value from 0 to 255")
                )
            }
    }
    
    func changeTF() {
        if let value = Int(textValue), (0...255).contains(value) {
            self.value = Double(value)
            return
        }
        showAlert.toggle()
        value = 0
        textValue = "0"
        
    }
}

struct SliderTF_Previews: PreviewProvider {
    static var previews: some View {
        SliderTF(textValue: .constant("50"), value: .constant(50.0))
    }
}


