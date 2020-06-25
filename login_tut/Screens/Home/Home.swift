//
//  Home.swift
//  login_tut
//
//  Created by  Иван Ощепков on 25.06.2020.
//  Copyright © 2020  Иван Ощепков. All rights reserved.
//

import SwiftUI

struct Home: View {
    @State var index = 0

    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .frame(width: 200, height: 180)
            
            Switch(buttons: ["Existing", "New"], index: $index)
                .padding(.top, 25)
            
            if index == 0 {
                Login().padding(.top, 25)

                Button(action: {}) {
                    Text("Forget Password?").foregroundColor(.white)
                }.padding(.top, 20)
            } else {
                SignUp().padding(.top, 25)
            }
            
            HStack(spacing: 15) {
                Color.white
                    .opacity(0.7)
                    .frame(width: 35, height: 1)
                
                Text("Or")
                    .fontWeight(.bold)
                    .foregroundColor(.white)

                Color.white
                    .opacity(0.7)
                    .frame(width: 35, height: 1)
            }.padding(.top, 10)
            
            HStack(spacing: 25) {
                RoundButton(image: "fb") {}
                RoundButton(image: "google") {}
            }.padding(.top, 10)
        }.padding()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
