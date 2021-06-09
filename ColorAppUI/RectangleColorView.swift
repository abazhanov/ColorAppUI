//
//  RectangleColorView.swift
//  ColorAppUI
//
//  Created by Artem Bazhanov on 06.06.2021.
//

import SwiftUI

struct RectangleColorView: View {
    let redColor: Double
    let greenColor: Double
    let blueColor: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .frame(
                width: UIScreen.main.bounds.width - 32,
                height: UIScreen.main.bounds.width/3 )
            .foregroundColor(Color(red: redColor/255, green: greenColor/255, blue: blueColor/255))
            .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct RectangleColorView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleColorView(redColor: 0.1, greenColor: 0.2, blueColor: 0.3)
    }
}
