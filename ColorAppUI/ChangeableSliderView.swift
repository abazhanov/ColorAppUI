//
//  ChangeableSliderView.swift
//  ColorAppUI
//
//  Created by Artem Bazhanov on 06.06.2021.
//

import SwiftUI

struct ChangeableSliderView: View {
    @Binding var value: Double
    let color: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))").foregroundColor(.green)
                .frame(width: 40, height: 30, alignment: .leading)
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(color)
            //TextField(String(value), text: String($value))
        }
    }
}

struct ChangeableSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeableSliderView(value: .constant(100.0), color: Color.red)
    }
}
