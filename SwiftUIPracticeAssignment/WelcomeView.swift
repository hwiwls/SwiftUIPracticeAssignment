//
//  WelcomeView.swift
//  SwiftUIPracticeAssignment
//
//  Created by hwijinjeong on 4/19/24.
//

import SwiftUI

struct WelcomeView: View {
    var nickname: String

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Text("환영합니다, \(nickname)!")
                    .font(.title)
                    .foregroundColor(.white)
                Spacer()
            }
        }
    }
}


#Preview {
    WelcomeView(nickname: "사용자")
}
