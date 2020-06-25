//
//  SubmitButton.swift
//  login_tut
//
//  Created by  Иван Ощепков on 25.06.2020.
//  Copyright © 2020  Иван Ощепков. All rights reserved.
//

import SwiftUI

struct SubmitButton: View {
    let label: String

    var body: some View {
        Button(action: {}) {
            Text(label)
                .foregroundColor(.white)
                .fontWeight(.bold)
                .padding(.vertical)
                .frame(width: UIScreen.main.bounds.width - 100)
        }.background(
            LinearGradient(gradient: .init(colors: [Color("Color2"), Color("Color1"), Color("Color")]), startPoint: .leading, endPoint: .trailing)
        )
            .cornerRadius(8)
            .shadow(radius: 25)
    }
}

struct SubmitButton_Previews: PreviewProvider {
    static var previews: some View {
        SubmitButton(label: "LOGIN")
    }
}
