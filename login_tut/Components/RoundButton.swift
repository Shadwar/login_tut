//
//  RoundButton.swift
//  login_tut
//
//  Created by  Иван Ощепков on 25.06.2020.
//  Copyright © 2020  Иван Ощепков. All rights reserved.
//

import SwiftUI

struct RoundButton: View {
    let image: String
    let action: () -> Void
    
    init(image: String, action: @escaping () -> Void) {
        self.image = image
        self.action = action
    }

    var body: some View {
        Button(action: action) {
            Image(image).renderingMode(.original).padding()
        }.background(Color.white)
        .clipShape(Circle())
    }
}

struct RoundButton_Previews: PreviewProvider {
    static var previews: some View {
        RoundButton(image: "fb") {}
    }
}
