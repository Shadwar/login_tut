//
//  ContentView.swift
//  login_tut
//
//  Created by  Иван Ощепков on 25.06.2020.
//  Copyright © 2020  Иван Ощепков. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: .init(colors: [Color("Color"), Color("Color1"), Color("Color2")]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)

            if UIScreen.main.bounds.height > 800 {
                Home()
            } else {
                ScrollView(.vertical, showsIndicators: false) {
                    Home()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
