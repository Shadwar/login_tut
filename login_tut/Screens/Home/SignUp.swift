//
//  SignUp.swift
//  login_tut
//
//  Created by  Иван Ощепков on 25.06.2020.
//  Copyright © 2020  Иван Ощепков. All rights reserved.
//

import SwiftUI

struct SignUp: View {
    @State var email = ""
    @State var password = ""
    @State var confirm = ""

    var body: some View {
        VStack {
            VStack {
                Input(icon: "envelope", label: "Enter Email Address", text: $email)
                Divider()
                Input(icon: "lock", label: "Enter Password", text: $password, secure: true)
                Divider()
                Input(icon: "lock", label: "Confirm Password", text: $confirm, secure: true)
            }.padding(.vertical)
                .padding(.horizontal, 20)
                .padding(.bottom, 40)
                .background(Color.white)
                .cornerRadius(10)
            
            SubmitButton(label: "SIGN UP")
                .offset(y: -40)
                .padding(.bottom, -40)
        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
