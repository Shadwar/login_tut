//
//  Input.swift
//  login_tut
//
//  Created by  Иван Ощепков on 25.06.2020.
//  Copyright © 2020  Иван Ощепков. All rights reserved.
//

import SwiftUI

struct Input: View {
    let icon: String
    let label: String
    @Binding var text: String
    var secure: Bool = false

    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: icon)
            .resizable()
                .frame(width: 18, height: 18)
                .foregroundColor(.black)

            if secure != true {
                TextField(label, text: $text)
            } else {
                SecureField(label, text: $text)
                Button(action: {}) {
                    Image(systemName: "eye")
                        .foregroundColor(.black)
                }
            }
        }.padding(.vertical, 20)
    }
}

struct Input_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 10) {
            Input(icon: "envelope", label: "Enter Email Address", text: .constant("asdf@asdf.asd"))

            Divider()

            Input(icon: "lock", label: "Enter Email Address", text: .constant("asdf@asdf.asd"), secure: true)
        }
    }
}
