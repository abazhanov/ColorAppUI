//
//  RectangleView.swift
//  ColorAppUI
//
//  Created by Artem Bazhanov on 05.06.2021.
//

import SwiftUI

struct RectangleView: View {
    let color: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .frame(
                width: UIScreen.main.bounds.width - 32,
                height: UIScreen.main.bounds.width/3 )
            .foregroundColor(color)
            .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView(color: .blue)
    }
}
