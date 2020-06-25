//
//  Switch.swift
//  login_tut
//
//  Created by  Иван Ощепков on 25.06.2020.
//  Copyright © 2020  Иван Ощепков. All rights reserved.
//

import SwiftUI

struct Switch: View {
    let buttons: [String]
    @Binding var index: Int
    
    var body: some View {
        HStack {
            ForEach(buttons.indices) { i in
                SwitchButton(label: self.buttons[i], total: self.buttons.count, active: self.index == i) { self.index = i }
            }
        }.background(Color.black.opacity(0.1))
        .clipShape(Capsule())
    }
}


struct SwitchButton: View {
    let label: String
    let total: Int
    let active: Bool
    let action: () -> Void
    
    init(label: String, total: Int, active: Bool, action: @escaping () -> Void) {
        self.label = label
        self.total = total
        self.active = active
        self.action = action
    }

    var body: some View {
        Button(action: {
            withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)) {
                self.action()
            }
        }) {
            Text(label)
                .foregroundColor(active ? .black : .white)
                .fontWeight(.bold)
                .padding(.vertical, 10)
                .frame(width: (UIScreen.main.bounds.width - 30) / CGFloat(self.total))
        }
        .background(active ? Color.white : Color.clear)
        .clipShape(Capsule())
    }
}


struct Switch_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 10) {
            Switch(buttons: ["Existing", "New"], index: .constant(0))
            Switch(buttons: ["Existing", "New"], index: .constant(1))
        }
    }
}
