//
//  Login.swift
//  login_tut
//
//  Created by  Иван Ощепков on 25.06.2020.
//  Copyright © 2020  Иван Ощепков. All rights reserved.
//

import SwiftUI

struct Login: View {
    @State var email = ""
    @State var password = ""

    var body: some View {
        VStack {
            VStack {
                Input(icon: "envelope", label: "Enter Email Address", text: $email)
                Divider()
                Input(icon: "lock", label: "Enter Password", text: $password, secure: true)
            }.padding(.vertical)
                .padding(.horizontal, 20)
                .padding(.bottom, 40)
                .background(Color.white)
                .cornerRadius(10)
            
            SubmitButton(label: "LOGIN")
                .offset(y: -40)
                .padding(.bottom, -40)
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
